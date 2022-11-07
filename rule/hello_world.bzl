def _hello_world_impl(ctx):
    out = ctx.actions.declare_file(ctx.file.template.basename.replace(".tpl", ""))
    ctx.actions.expand_template(
        output = out,
        template = ctx.file.template,
        substitutions = {"{Name}": ctx.attr.username},
    )
    return [DefaultInfo(files = depset([out]))]

hello_world = rule(
    implementation = _hello_world_impl,
    attrs = {
        "username": attr.string(default = "unknown pserson"),
        "template": attr.label(
            allow_single_file = [".js.tpl"],
            mandatory = True,
        ),
    },
)
