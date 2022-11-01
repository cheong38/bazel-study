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

## Tips

### `bazel info --show_make_env`

build-in bazel 커맨드와 같은 정보들을 보여준다.

```
BINDIR: bazel-out/darwin-fastbuild/bin
COMPILATION_MODE: fastbuild
GENDIR: bazel-out/darwin-fastbuild/bin
TARGET_CPU: darwin
bazel-bin: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c/execroot/__main__/bazel-out/darwin-fastbuild/bin
bazel-genfiles: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c/execroot/__main__/bazel-out/darwin-fastbuild/bin
bazel-testlogs: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c/execroot/__main__/bazel-out/darwin-fastbuild/testlogs
character-encoding: file.encoding = ISO-8859-1, defaultCharset = ISO-8859-1
command_log: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c/command.log
committed-heap-size: 77MB
execution_root: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c/execroot/__main__
gc-count: 22
gc-time: 745ms
install_base: /var/tmp/_bazel_woojin/install/002cabb5e60d5ceddc672c7bbd1f0790
java-home: /private/var/tmp/_bazel_woojin/install/002cabb5e60d5ceddc672c7bbd1f0790/embedded_tools/jdk
java-runtime: OpenJDK Runtime Environment (build 11.0.6+10-LTS) by Azul Systems, Inc.
java-vm: OpenJDK 64-Bit Server VM (build 11.0.6+10-LTS, mixed mode) by Azul Systems, Inc.
max-heap-size: 4294MB
output_base: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c
output_path: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c/execroot/__main__/bazel-out
package_path: %workspace%
release: release 5.3.2
repository_cache: /var/tmp/_bazel_woojin/cache/repos/v1
server_log: /private/var/tmp/_bazel_woojin/4f6fa26cd62c0802fa560137a531a68c/java.log.adminui-macbookpro-14.woojin.log.java.20221101-135441.71696
server_pid: 71696
used-heap-size: 43MB
workspace: /Users/woojin/Development/bazel-study
```
