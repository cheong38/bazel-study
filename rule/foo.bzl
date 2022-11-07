def _foo_binary_impl(ctx):
    # Whenever declaring a file, we need to tell Bazel how to generate it.
    out = ctx.actions.declare_file(ctx.label.name)

    # Create file with the given content.
    # It just registers an action, which taught Bazel how to generate the file.
    # Bazel won't create the file until it is actually requested.
    ctx.actions.write(
        output = out,
        content = "Hello\n",
    )

    # Tell Bazel that the file is an output of the rule, and not a temporary file used
    # within the rule implementation.
    # Below shows the way to choose the outputs of a rule.
    return [DefaultInfo(files = depset([out]))]

foo_binary = rule(
    implementation = _foo_binary_impl,
)
