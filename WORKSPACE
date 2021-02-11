workspace(
    name = "cosmo_rbe",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_toolchains",
    sha256 = "1adf5db506a7e3c465a26988514cfc3971af6d5b3c2218925cd6e71ee443fc3f",
    strip_prefix = "bazel-toolchains-4.0.0",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/4.0.0/bazel-toolchains-4.0.0.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/releases/download/4.0.0/bazel-toolchains-4.0.0.tar.gz",
    ],
)


load("@bazel_toolchains//rules:environments.bzl", "clang_env")
load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")
load("//tools/platforms:toolchain_config_suite_spec.bzl", "DEFAULT_TOOLCHAIN_CONFIG_SUITE_SPEC")

rbe_autoconfig(
    name = "rbe_default",
    env = clang_env(),
    export_configs = True,
    toolchain_config_suite_spec = DEFAULT_TOOLCHAIN_CONFIG_SUITE_SPEC,
    use_legacy_platform_definition = False,
)