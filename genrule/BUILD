genrule(
    name = "hello20s",
    outs = ["hello20s.txt"],
    cmd_bash = "sleep 20 && echo 'hello20s' > $@"
)

genrule(
    name = "envinfo",
    outs = ["envinfo.txt"],
    cmd_bash = """( env; echo "----"; pwd; ls; echo "----"; whoami; echo "outs = $@" ) | tee $@"""
)
