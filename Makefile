
publish:
	npm version patch -git-tag-version --include-workspace-root --ws
	git add .
	git commit -m 'Publish new version'
	git push
	git push --follow-tags
	gh release create $(git describe --tags --abbrev=0) --draft=false --generate-notes
