VERSION ?= 0.2.$(CI_BUILD_NUMBER)

.DEFAULT_GOAL: package

test: ## runs tests
	@bazel test //...

package: test ## packagees artifact
	@echo "Package not implemented"

publish: package ## publishes artifact
	@echo "Publish not implemented"

.PHONY: help

# see http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%10s\033[0m %s\n", $$1, $$2}'
