package(default_visibility = ["//visibility:public"])

load(
  "@io_tweag_rules_haskell//haskell:haskell.bzl",
  "haskell_library",
  "haskell_toolchain",
)

haskell_toolchain(
  name = "ghc",
  version = "8.2.2",
  tools = "@ghc//:bin",
)

load(":deps.bzl", "PANDOC_DEPS")

haskell_library(
  name = "pandoc",
  src_strip_prefix = "src",
  srcs = glob(['src/**/*.hs']),
  prebuilt_dependencies = PANDOC_DEPS,
)
