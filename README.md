# Cargo Publish

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-cargo-publish)](https://github.com/ryohidaka/action-cargo-publish/releases/)
[![Test Action](https://github.com/ryohidaka/action-cargo-publish/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-cargo-publish/actions/workflows/test.yml)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

GitHub Actions to publish Rust crates to crates.io.

## Usage

```yml
on: [push]

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-cargo-publish@v0.1.0
        with:
          path: "."
          token: ${{ secrets.CARGO_REGISTRY_TOKEN }}
          dry-run: false
```

## Inputs

| Input     | Description                                           | Required | Default |
| --------- | ----------------------------------------------------- | -------- | ------- |
| `path`    | The path to the Cargo project root.                   |          | `.`     |
| `token`   | The token to publish to crates.io.                    | ✅       |         |
| `dry-run` | If true, run cargo publish with the `--dry-run` flag. |          | `false` |
