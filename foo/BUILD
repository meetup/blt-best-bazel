# load definitions for our scala rules
load(
  "@io_bazel_rules_scala//scala:scala.bzl",
  "scala_test"
)

load(
  "//local_tools/scala:scala.bzl",
  "scala_library",
)

# declare a package named best-mixed-scala-java
# with mixed scala/java sources
scala_library(
    name = "foo",
    visibility = ["//visibility:public"],
    srcs = glob(
      [
        "src/main/scala/**/*.scala",
        "src/main/java/**/*.java"
      ]
    )
)

# run some scala tests
scala_test(
  name = "foo-test",
  size = "small", # scala apparently generates "big" tests?
  srcs = glob(
    ["src/test/scala/**/*.scala"]
  ),
  deps = [
        ":foo",
    ]
)
