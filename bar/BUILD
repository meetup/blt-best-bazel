load(
  "@io_bazel_rules_scala//scala:scala.bzl",
  "scala_library",
  "scala_binary",
  "scala_test"
)

scala_library(
    name = "bar",
    srcs = glob(
      [
        "src/main/scala/**/*.scala",
        "src/main/java/**/*.java"
      ]
    ),
    deps = [
      "//foo"
    ],
    scalacopts = ["-Yskip-inline-info-attribute"]
)
