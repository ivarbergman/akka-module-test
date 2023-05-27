
all:
	@echo "Noop"

patch:
	npm ci
	npm version patch --include-workspace-root --ws
	git status
	git add .
	git commit -m 'Publish'
	git push origin main --follow-tags
