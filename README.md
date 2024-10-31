# Cargo Publish

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-cargo-publish)](https://github.com/ryohidaka/action-cargo-publish/releases/)
[![Test Action](https://github.com/ryohidaka/action-cargo-publish/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-cargo-publish/actions/workflows/test.yml)

GitHub Actions to publish Rust crates to crates.io.

## Usage

```yml
on: [push]

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-cargo-publish@v1
        with:
```

## Inputs

| Input | Description | Required | Default |
| ----- | ----------- | -------- | ------- |
|       |             |          |         |
