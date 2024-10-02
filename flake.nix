{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    rust-overlay.url = "github:oxalica/rust-overlay";
    rust-overlay.inputs.nixpkgs.follows = "nixpkgs";

    basecamp.url = "github:plul/basecamp";
    basecamp.inputs.nixpkgs.follows = "nixpkgs";
    basecamp.inputs.rust-overlay.follows = "rust-overlay";
  };

  outputs =
    { basecamp, nixpkgs, ... }:
    {
      devShells."x86_64-linux".default =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
        in
        basecamp.mkShell pkgs {
          rust.enable = true;
          packages = [ ];
        };
    };
}
