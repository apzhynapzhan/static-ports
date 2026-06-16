# static-ports
Package recipes for Static Linux.

## Structure
Each port lives in a category directory:
```
category/name/
  name.scheme  - package metadata and build instructions
```

## Building
Use ace to install a port:
```
ace install category/name
```

## Adding a port
1. Create a directory under the right category
2. Write `name.scheme` using the package DSL
3. Test with `ace install`
4. Submit a PR

## Port format

**More info in [the DSL's repo](https://codeberg.org/StaticLinux/scheme)**

```scheme
(package
  (name "example")
  (version "1.0.0")
  (category "utils")
  (description "an example port")
  (source "https://example.com/example-1.0.0.tar.gz")
  (sha256 "...")
  (binary "example-1.0.0/example")
  (install "/usr/bin/example")
  (build
    (env "CC" "x86_64-linux-musl-gcc")
    (run "./configure" "--prefix=/usr")
    (make)))
```

### Build DSL
| Form | Description |
|------|-------------|
| `(env "KEY" "val")` | Set an environment variable |
| `(run "cmd" "arg" ...)` | Run a command |
| `(make)` | Run make with -jN |
| `(make "target")` | Run make with a specific target |
