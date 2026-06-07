from __future__ import annotations

import argparse
import csv
import re
import time
import urllib.request
from pathlib import Path

DEFAULT_URL_TEMPLATE = (
    "https://www.macrotrends.net/stocks/charts/{ticker}/{company}/research-development-expenses"
)
DEFAULT_ANNUAL_CSV_NAME = "rd-expenses-annual.csv"
DEFAULT_QUARTER_CSV_NAME = "rd-expenses-quarter.csv"

SYMBOLS: list[tuple[str, str, str]] = [
    ("AMZN", "amazon", "United States"),
    ("GOOG", "alphabet", "United States"),
    ("META", "meta-platforms", "United States"),
    ("AAPL", "apple", "United States"),
    ("MSFT", "microsoft", "United States"),
    #("HWT", "huawei", "China"),
    ("VWAGY", "volkswagen-group", "Germany"),
    #("SSNLF", "samsung-electronics", "South Korea"),
    ("INTC", "intel", "United States"),
    ("RHHBY", "roche-holding-ag", "Switzerland"),
    ("JNJ", "johnson-johnson", "United States"),
    ("MRK", "merck", "United States"),
    ("PFE", "pfizer", "United States"),
    ("NVS", "novartis-ag", "Switzerland"),
    ("GM", "general-motors", "United States"),
    ("AZN", "astrazeneca", "United Kingdom"),
    ("BMY", "bristol-myers-squibb", "United States"),
    ("TCEHY", "tencent", "China"),
    ("QCOM", "qualcomm", "United States"),
    ("BABA", "alibaba-group", "China"),
    ("NVDA", "nvidia", "United States"),
    ("LLY", "eli-lilly", "United States"),
    ("AVGO", "broadcom", "United States"),
    ("ORCL", "oracle", "United States"),
    #("F", "ford", "United States"),
    ("CSCO", "cisco-systems", "United States"),
    ("ABBV", "abbvie", "United States"),
    ("IBM", "ibm", "United States"),
    ("AMD", "amd", "United States"),
    ("AMGN", "amgen", "United States"),
    ("TSLA", "tesla", "United States"),
    ("CRM", "salesforce", "United States"),
    ("REGN", "regeneron-pharmaceuticals", "United States"),
    ("GILD", "gilead-sciences", "United States")
]


def get_html_file_name(ticker: str, company_name: str) -> str:
    return f"{ticker}-{company_name}.html"


def download_page(url: str, output_path: Path) -> Path:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    request = urllib.request.Request(
        url,
        headers={
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/115.0.0.0 Safari/537.36"
            )
        },
    )
    with urllib.request.urlopen(request, timeout=20) as response:
        html = response.read()
    output_path.write_bytes(html)
    return output_path


def load_html(file_path: Path) -> str:
    return file_path.read_text(encoding="utf-8", errors="replace")


def strip_html_tags(text: str) -> str:
    return re.sub(r"<.*?>", "", text, flags=re.S).strip()


def parse_table_rows(table_html: str) -> list[tuple[str, str]]:
    rows: list[tuple[str, str]] = []
    for tr_match in re.finditer(r"<tr.*?>(.*?)</tr>", table_html, flags=re.S | re.I):
        row_html = tr_match.group(1)
        cells = re.findall(r"<td.*?>(.*?)</td>", row_html, flags=re.S | re.I)
        if len(cells) < 2:
            continue
        label = strip_html_tags(cells[0])
        value = strip_html_tags(cells[1])
        if label and value:
            rows.append((label, value))
    return rows


def parse_tables_from_section(html: str) -> tuple[list[tuple[str, str]], list[tuple[str, str]]]:
    marker = "<!-- ================= Annual ================= -->"
    marker_index = html.find(marker)
    if marker_index == -1:
        raise ValueError(f"Marker not found in HTML: {marker}")

    section_html = html[marker_index:]
    tables = re.findall(r"<table.*?>.*?</table>", section_html, flags=re.S | re.I)
    if len(tables) < 2:
        raise ValueError("Unable to find both annual and quarterly tables after the marker.")

    annual_rows = parse_table_rows(tables[0])
    quarterly_rows = parse_table_rows(tables[1])
    if not annual_rows or not quarterly_rows:
        raise ValueError("Parsed tables are empty or malformed.")

    return annual_rows, quarterly_rows


def parse_millions_value(value: str) -> float:
    cleaned = value.replace("$", "").replace("€", "").replace(" ", "").strip()
    cleaned = cleaned.replace("/", "")
    cleaned = re.sub(r"[^0-9.,-]", "", cleaned)
    if "," in cleaned and "." not in cleaned:
        cleaned = cleaned.replace(",", "")
    else:
        cleaned = cleaned.replace(",", "")
    if not cleaned:
        raise ValueError(f"Cannot parse numeric value from '{value}'")
    return float(cleaned)


def to_billions(millions: float) -> float:
    return millions / 1000.0


def write_annual_csv(output_path: Path, annual_rows: list[tuple[str, str, str, str, str]]) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", newline="", encoding="utf-8") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["ticker", "company_name", "country", "annual_year", "annual_billion"])
        for ticker, company_name, country, annual_year, annual_value in annual_rows:
            annual_billion = f"{to_billions(parse_millions_value(annual_value)):.3f}"
            writer.writerow([ticker, company_name, country, annual_year, annual_billion])


def write_quarter_csv(output_path: Path, quarterly_rows: list[tuple[str, str, str, str, str, str]]) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", newline="", encoding="utf-8") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["ticker", "company_name", "country", "quarter_date", "quarter_billion"])
        for ticker, company_name, country, quarter_date, quarter_value in quarterly_rows:
            quarter_billion = f"{to_billions(parse_millions_value(quarter_value)):.3f}"
            writer.writerow([ticker, company_name, country, quarter_date, quarter_billion])


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description=(
            "Télécharge les pages Macrotrends pour la liste interne de symboles, "
            "extrait les tableaux annuels et trimestriels, et écrit deux CSV séparés."
        )
    )
    parser.add_argument(
        "--force-download",
        action="store_true",
        help="Force le retéléchargement des fichiers HTML même s'ils existent déjà.",
    )
    return parser


def main() -> None:
    parser = build_parser()
    args = parser.parse_args()

    script_dir = Path(__file__).resolve().parent
    annual_csv_path = script_dir / DEFAULT_ANNUAL_CSV_NAME
    quarter_csv_path = script_dir / DEFAULT_QUARTER_CSV_NAME

    annual_rows: list[tuple[str, str, str, str, str]] = []
    quarter_rows: list[tuple[str, str, str, str, str]] = []

    for ticker, company_name, country in SYMBOLS:
        html_path = script_dir / "scrapped" / get_html_file_name(ticker, company_name)
        try:
            if args.force_download or not html_path.exists():
                download_page(DEFAULT_URL_TEMPLATE.format(ticker=ticker, company=company_name), html_path)
                time.sleep(1)

            html = load_html(html_path)
            annual_data, quarter_data = parse_tables_from_section(html)
            annual_rows.extend((ticker, company_name, country, year, value) for year, value in annual_data)
            quarter_rows.extend((ticker, company_name, country, date, value) for date, value in quarter_data)
            print(f"{ticker},{company_name}: DONE")
        except Exception as exc:
            print(f"{ticker},{company_name}: FAIL ({exc})")
            continue

    write_annual_csv(annual_csv_path, annual_rows)
    write_quarter_csv(quarter_csv_path, quarter_rows)


if __name__ == "__main__":
    main()
