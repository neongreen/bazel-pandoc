workspace(name = "YOUR_PROJECT_NAME_HERE")

http_archive(
  name = "io_tweag_rules_haskell",
  strip_prefix = "rules_haskell-0.4",
  urls = ["https://github.com/tweag/rules_haskell/archive/v0.4.tar.gz"]
)

load("@io_tweag_rules_haskell//haskell:repositories.bzl", "haskell_repositories")
haskell_repositories()

http_archive(
  name = "io_tweag_rules_nixpkgs",
  strip_prefix = "rules_nixpkgs-0.2",
  urls = ["https://github.com/tweag/rules_nixpkgs/archive/v0.2.tar.gz"],
)

load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_package")

nixpkgs_package(
  name = "ghc",
  attribute_path = "haskell.compiler.ghc822",
)

register_toolchains("//:ghc")
