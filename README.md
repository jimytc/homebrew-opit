# homebrew-opit

Homebrew tap for [opit](https://github.com/jimytc/opit), a terminal UI for viewing and
playing with OpenAPI documents.

## Install

```bash
brew install jimytc/opit/opit
```

or, equivalently:

```bash
brew tap jimytc/opit
brew install opit
```

Currently supports macOS on Apple Silicon (arm64) only.

## Updating the formula for a new opit release

After cutting a new `opit` release (tag `vX.Y.Z`), update `Formula/opit.rb`:

1. Download the new macOS tarball asset and compute its checksum:
   ```bash
   gh release download vX.Y.Z --repo jimytc/opit --pattern "opit-vX.Y.Z-aarch64-apple-darwin.tar.gz"
   shasum -a 256 opit-vX.Y.Z-aarch64-apple-darwin.tar.gz
   ```
2. Update `url`, `sha256`, and `version` in `Formula/opit.rb` to match the new version
   (the `bin.install "opit"` line doesn't need to change — Homebrew automatically strips
   the tarball's single top-level directory when staging).
3. Commit and push.
