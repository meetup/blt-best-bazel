VERSION ?= 0.2.$(CI_BUILD_NUMBER)

.DEFAULT_GOAL: package

test: ## runs tests
	@bazel test --test_output streamed //...

package: test ## packagees artifact
	@echo "Package not implemented"

publish: package ## publishes artifact
	@echo "Publish not implemented"

.PHONY: help

help: ## print out all available commands
	@echo Public targets:
	@grep -E '^[^_][^_][a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@echo "Private targets: (use at own risk)"
	@grep -E '^__[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[35m%-20s\033[0m %s\n", $$1, $$2}'
