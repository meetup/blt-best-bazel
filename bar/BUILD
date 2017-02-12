load(
    "//local_tools/scala:scala.bzl",
    "scala_library",
)

scala_library(
    name = "bar",
    srcs = glob(
        [
            "src/main/scala/**/*.scala",
            "src/main/java/**/*.java",
        ],
    ),
    deps = [
        "//foo",
    ],
)
