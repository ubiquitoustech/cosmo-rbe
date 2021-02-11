You need to use the same bazel version as the bazel toolchain version that you are using

build the versions with:

RBE_AUTOCONF_ROOT=$(pwd) ./bazelisk-linux-amd64 build @rbe_default//...


the resources you need to look at to create and run new rules are:

bazel toolchain info:

This is how to setup the toolchains
https://github.com/bazelbuild/bazel-toolchains/blob/727f6fa33153e5cc053b3e0ed6fcf0b17a5f2b51/rules/rbe_repo.bzl#L145


this is how to setup autogenerate as well:
You need to have done everything in the previous step to do this as well
https://github.com/bazelbuild/bazel-toolchains/blob/master/rules/rbe_repo/toolchain_config_suite_spec.bzl

Kythe examples:

https://github.com/kythe/kythe/blob/f20007c9df29ffdcb5037e19b5fa68a17166bd17/WORKSPACE#L67
https://github.com/kythe/kythe/blob/f20007c9df29ffdcb5037e19b5fa68a17166bd17/tools/platforms/toolchain_config_suite_spec.bzl#L19
https://github.com/kythe/kythe/blob/f20007c9df29ffdcb5037e19b5fa68a17166bd17/tools/platforms/configs/versions.bzl#L1

How tool for creating new rules from kythe:
https://github.com/kythe/kythe/blob/f20007c9df29ffdcb5037e19b5fa68a17166bd17/tools/platforms/configs/rebuild.sh#L1