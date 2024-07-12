FLY_CLI ?= ${HOME}/.fly/bin/fly

.PHONY: install
install:
	curl -L https://fly.io/install.sh | sh

.PHONY: deploy
deploy:
	cd backend && $(FLY_CLI) deploy

