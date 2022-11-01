# Bazel study

## hello20s

20 초 후에 hello20s 문자열을 hello20s.txt 파일에 쓰는 rule.

```
$ bazel build //:hello20s
```

실행 후, `bazel-bin/hello20s.txt` 파일이 생성되는 것을 확인할 수 있다.
