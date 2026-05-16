# static-ports

Package recipes for Static Linux.

## Structure

each port lives in a category directory:

\```
category/name/
  build.sh    — builds the package from source
  pkg.toml    — package metadata
\```

## Building

use hephaestus to build a port:

\```
python3 hephaestus.py static-ports/shells/dash
\```

## Adding a port

1. create a directory under the right category
2. write `build.sh` and `pkg.toml`
3. test with hephaestus
4. submit a PR