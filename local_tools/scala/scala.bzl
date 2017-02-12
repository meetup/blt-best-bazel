load("@io_bazel_rules_scala//scala:scala.bzl",
     uppstream_lib = "scala_library"
     )

# repo specific defaults
_default_scalac_opts = [
     "-Yskip-inline-info-attribute",  # without this minor changes almost always trigger recomputations
     "-Ywarn-dead-code",
     "-Ywarn-unused-import",  # macros can cause this to kill the compiler, see: https://github.com/scala/pickling/issues/370
     "-Ywarn-value-discard",
     "-Xmax-classfile-name", "128",  # Linux laptops don't like long file names
     "-Xlint",
     "-Xfuture",
     "-Xfatal-warnings",  # sometimes disabled due to https://issues.scala-lang.org/browse/SI-9673 on stubs
     "-deprecation",
     "-feature",
     "-unchecked",
]

# rexport scala_library delegating to upstream scala_library
def scala_library(name, srcs = [], deps = [], runtime_deps = [], data = [], resources = [],
                   scalacopts = _default_scalac_opts, jvm_flags = [], main_class = "", exports = [], visibility = None):
   uppstream_lib(name = name, srcs = srcs, deps = deps, runtime_deps = runtime_deps,
                 plugins = [],
                 resources = resources, scalacopts = scalacopts,
                 jvm_flags = jvm_flags, main_class = main_class, exports = exports, visibility = visibility,
                 print_compile_time=True)
