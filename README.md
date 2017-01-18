# blt-best-bazel

Some evolving experiments for best practices using bazel to build artifacts
from mixed scala/java source code

## installing bazel

* see [this doc](https://bazel.build/versions/master/docs/install.html)

### IDE

If you use atom you may want language highlighting

```bash
$ apm install language-bazel
```

## usage

The files relevant to Bazel are `WORKSPACE` which defines a context for a Bazel run,
and `BUILD` which is Bazel's declarative form of defining a build in terms of `rules`

This build it's outfitted with Meetup's blt pipeline interface (Makefile)

At to moment only `test` is implemented. `package` and `publish` are not.

A list of avalable `bazel` commands can be found [here](https://bazel.build/versions/master/docs/bazel-user-manual.html)
