def _foo_binary_impl(ctx):
    print(ctx.label)

foo_binary = rule(
    implementation = _foo_binary_impl,
)
