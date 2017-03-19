# rules for scala
# https://github.com/bazelbuild/rules_scala#getting-started
# pull rule definitions from git
git_repository(
    name = "io_bazel_rules_scala",
    commit = "690cf39eba8eccf3c6e21ca77d8a4e1710aa3629",  # update this as needed
    remote = "https://github.com/bazelbuild/rules_scala.git",
)

# load the desired scala rules for this workspace
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")

scala_repositories()
