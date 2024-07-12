FLY_CLI ?= ${HOME}/.fly/bin/fly

.PHONY: install
install:
	curl -L https://fly.io/install.sh | sh

.PHONY: start-backend
start-backend:
	cd backend && pip3 install -r requirements.txt
	cd backend && python3 server.py

.PHONY: deploy
deploy:
	cd backend && $(FLY_CLI) deploy && $(FLY_CLI) open
