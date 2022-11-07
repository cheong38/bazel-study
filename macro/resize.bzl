# name: By conventions, macros also have a `name` argument just like rules.
# **kargs: Forward the extra arguments to the underlying `genrule`
def resize(name, src, size = "100x100", **kwargs):
    """Create a resized image of the src image.

    The generated file is prefixed with 'resized_'.
    """
    native.genrule(
        name = name,
        srcs = [src],
        outs = ["resized_" + src],
        cmd = "convert $< -resize " + size + " $@",
        **kwargs
    )
