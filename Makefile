
publish:
	npm version patch -git-tag-version --include-workspace-root --ws
	git add package.json
	git commit -m 'Publish new version'
	git push --follow-tags                                          



