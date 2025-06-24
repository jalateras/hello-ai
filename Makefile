# Makefile for hello-ai project

# Default target
.PHONY: all
all: help

# Deploy the application
.PHONY: deploy
deploy:
	npm run deploy

# Run development server
.PHONY: dev
dev:
	npm run dev

# Alias for dev
.PHONY: start
start:
	npm run start

# Run tests
.PHONY: test
test:
	npm run test

# Generate Cloudflare types
.PHONY: cf-typegen
cf-typegen:
	npm run cf-typegen

# Update wrangler to latest version
.PHONY: update-wrangler
update-wrangler:
	npm install --save-dev wrangler@latest

# Help command
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  deploy      - Deploy the application to Cloudflare"
	@echo "  dev         - Run development server"
	@echo "  start       - Alias for dev"
	@echo "  test        - Run tests"
	@echo "  cf-typegen  - Generate Cloudflare types"
	@echo "  update-wrangler - Update wrangler to latest version"
	@echo "  help        - Show this help message"
