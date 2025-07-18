# PDF Highlight Extractor

A lightweight command-line script for macOS to extract and clean highlighted text and annotations from PDFs using [`pdfannots`](https://github.com/tezht/pdfannots). This tool is designed for researchers, analysts, and students who want to turn annotated PDFs into clean, clipboard-ready summaries for notes, reports, or documentation.

---

## ✨ Features

- Extracts highlights and annotation text from PDF files
- Supports optional page number offset (e.g., if printed page numbers don’t match actual PDF pages)
- Renames default section headers:
  - `## Highlights` → `## Summary`
  - `## Nits` → `## Traffic Data`
- Copies the final cleaned output directly to your clipboard (`pbcopy`)
- Can be installed as a global terminal command (`extract_notes`)
- Script is editable and tracked via GitHub

---

## 🛠️ Requirements

- macOS (tested on Ventura and later)
- Python 3 with [`pdfannots`](https://github.com/tezht/pdfannots)
- Virtual environment (`venv`) with `pdfannots` installed
- `pbcopy` (built-in on macOS)

Optional but recommended:
- [`qpdf`](https://github.com/qpdf/qpdf) (to unlock PDF edit restrictions)
- [Homebrew](https://brew.sh/) (to install `qpdf`)

---

## 🧪 Usage

```bash
extract_notes /path/to/file.pdf [-offset]