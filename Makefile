FLY_CLI ?= ${HOME}/.fly/bin/fly

.PHONY: install
install:
	curl -L https://fly.io/install.sh | sh

.PHONY: deploy/%
deploy/%:
	cd $(patsubst deploy/%,%,$@) && $(FLY_CLI) deploy

.PHONY: deploy
deploy: deploy/backend deploy/frontend
