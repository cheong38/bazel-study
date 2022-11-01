# Bazel study

## hello20s

20 초 후에 hello20s 문자열을 hello20s.txt 파일에 쓰는 rule.

```
$ bazel build //genrule:hello20s
```

실행 후, `bazel-bin/genrule/hello20s.txt` 파일이 생성되는 것을 확인할 수 있다.

## envinfo

sandbox 환경의 구성값들을 envinfo.txt 에 쓰는 rule.

```
$ bazel build //genrule:envinfo
```

실행 후, `bazel-bin/genrule/envinfo.txt` 파일이 생성되는 것을 확인할 수 있다.
