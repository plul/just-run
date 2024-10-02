# just-run

`just-run` is a simple convenience crate for executing system commands with the expectation
of successful termination and UTF-8 encoded output. It aims to handle the most common case without
extensive configuration or edge case coverage.

## Usage

```rust
use just_run::{run, Success};

let Success { stdout, stderr } = run("echo", ["Hello world!"]).expect("Command failed");
println!("{stdout}");
```

## See also

For more advanced use cases, consider checking out the [`duct`](https://crates.io/crates/duct) crate or
using the standard library tools directly.
