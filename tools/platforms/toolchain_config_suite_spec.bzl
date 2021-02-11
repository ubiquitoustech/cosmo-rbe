load("//tools/platforms/configs:versions.bzl", "TOOLCHAIN_CONFIG_AUTOGEN_SPEC")


# JAVA_HOME for image:
# /usr/lib/jvm/java-11-openjdk-amd64
# gcr.io/nfstest/rbe_ubuntu1804_java11-final-image@sha256:144d5fc9af4135911ff141abcdc3728e6f410cc77acdd67c59dcac6d32e6b73f

DEFAULT_TOOLCHAIN_CONFIG_SUITE_SPEC = {
    "repo_name": "cosmo_rbe",
    "output_base": "tools/platforms/configs",
    "container_repo": "nfstest/rbe_ubuntu1804_java11-final-image",
    "container_registry": "gcr.io",
    "default_java_home": "/usr/lib/jvm/java-11-openjdk-amd64",
    "toolchain_config_suite_autogen_spec": TOOLCHAIN_CONFIG_AUTOGEN_SPEC,
}