CURRENT_BRANCH := $(shell git branch --show-current)
CURRENT_TYPE := $(shell git branch --show-current | sed -e 's|/.*||g' )

all:
	@echo "Noop"

patch:
	npm ci
	npm version patch --include-workspace-root --ws
	git status
	git add .
	git commit -m 'Publish'
	git push origin main --follow-tags

prerelease:
	npm ci
	npm version prerelease --preid=${CURRENT_TYPE} --include-workspace-root --ws
	git status
	git add .
	git commit -m 'Publish prerelease ${CURRENT_TYPE}'
	git push origin --follow-tags
