
patch:
	npm version patch -git-tag-version --include-workspace-root --ws
	git add .
	git commit -m 'Publish new version'
	git push
	git push --follow-tags                                          

minor:
	npm version minor -git-tag-version --include-workspace-root --ws
	git add .
	git commit -m 'Publish new version'
	git push
	git push --follow-tags                                          

major:
	npm version major -git-tag-version --include-workspace-root --ws
	git add .
	git commit -m 'Publish new version'
	git push
	git push --follow-tags                                          



