CURRENT_BRANCH := $(shell git branch --show-current)
CURRENT_TYPE := $(shell git branch --show-current | sed -e 's|/.*||g' )

all:
	@echo "Noop"

patch:
	gh workflow run "Bump release" --ref=${CURRENT_BRANCH} -F version=patch   

prerelease:
	gh workflow run "Bump prerelease" --ref=${CURRENT_BRANCH} -F version=prerelease   

