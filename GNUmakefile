PYTHON3                                 := $(shell which python3)
export PYTHON3
PORT:=8000

.PHONY: init build serve push signin
init:
	python3 -m pip install -r requirements.txt
build:
	mkdocs build
serve: build
	mkdocs serve & open http://127.0.0.1:$(PORT) || open http://127.0.0.1:$(PORT)
	#$(PYTHON3) -m http.server $(PORT) --bind 127.0.0.1 -d $(PWD)/docs > /dev/null 2>&1 || open http://127.0.0.1:$(PORT)
.PHONY: push
push:
	@echo 'push'
	#bash -c "git reset --soft HEAD~1 || echo failed to add docs..."
	#bash -c "git add README.md docker/README.md docker/DOCKER.md *.md docker/*.md || echo failed to add docs..."
	#bash -c "git commit --amend --no-edit --allow-empty -m '$(GIT_HASH)'          || echo failed to commit --amend --no-edit"
	#bash -c "git commit         --no-edit --allow-empty -m '$(GIT_PREVIOUS_HASH)' || echo failed to commit --amend --no-edit"
	bash -c "git push -f --all git@github.com:$(GIT_PROFILE)/$(PROJECT_NAME).git || echo failed to push docs"
	bash -c "git push -f --all git@github.com:bitcoincore-dev/statoshi.host.git || echo failed to push to statoshi.host"


SIGNIN=randymcmillan
export SIGNIN

signin:
#Place a file named GH_TOKEN.txt in your $HOME - create in https://github.com/settings/tokens (Personal access tokens)
	bash -c 'cat ~/GH_TOKEN.txt | docker login ghcr.io -u $(GIT_PROFILE) --password-stdin'
