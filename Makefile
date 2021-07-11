.DEFAULT_GOAL := help

build: ## Build the image
	@docker build -t ccliver/awscli .

push: ## Push to Docker hub
	@docker login && docker push ccliver/awscli:latest

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
