load(":foo.bzl", "foo_binary")

foo_binary(
    name = "foo_bin",
    srcs = glob(["src/**"]),
    username = "Alice",
)

foo_binary(name = "foo_bin2")

load(":hello_world.bzl", "hello_world")

hello_world(
    name = "hello",
    template = "hi.js.tpl",
    username = "Alice",
)
