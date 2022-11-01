genrule(
    name = "version",
    srcs = [".git"],
    outs = ["version.txt"],
    cmd_bash = "git describe --always --dirty | tee $@",
)
