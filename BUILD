# load definitions for our scala rules
load(
  "@io_bazel_rules_scala//scala:scala.bzl",
  "scala_library",
  "scala_binary",
  "scala_test"
)

# declare a package named best-mixed-scala-java
# with mixed scala/java sources
scala_library(
    name = "best-mixed-scala-java",
    srcs = glob(
      [
        "src/main/scala/**/*.scala",
        "src/main/java/**/*.java"
      ]
    )
)

# run some scala tests
scala_test(
  name = "best-mixed-scala-java-test",
  size = "small", # scala apparently generates "big" tests?
  srcs = glob(
    ["src/test/scala/**/*.scala"]
  ),
  deps = [
        ":best-mixed-scala-java",
    ]
)
