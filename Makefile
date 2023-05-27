
all:
	@echo "Noop"

patch:
	npm ci
	npm version patch --include-workspace-root --ws
	git status
	git add .
	git commit -m 'Publish'
	git push origin main --follow-tags

hotfix:
	npm ci
	npm version prepatch --preid=hotfix --include-workspace-root --ws
	git status
	git add .
	git commit -m 'Publish hotfix'
	git push origin --follow-tags
