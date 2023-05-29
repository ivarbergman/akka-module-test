CURRENT_BRANCH := $(shell git branch --show-current)
CURRENT_TYPE := $(shell git branch --show-current | sed -e 's|/.*||g' )

all:
	@echo "Noop"

release:
	@read -p "Press key to continue with release on ${CURRENT_BRANCH}."
	@if [ "$CURRENT_BRANCH" = "main" ]; then\
		gh workflow run "Bump release" --ref=${CURRENT_BRANCH} -F version=patch;\
	else \
		gh workflow run "Bump prerelease" --ref=${CURRENT_BRANCH} -F version=prerelease;\
    fi

