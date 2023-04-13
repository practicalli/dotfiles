# ------------------------------------------
# Practicalli Makefile
#
# Consistent set of targets to support local development of Clojure
# and build the Clojure service during CI deployment
#
# Requirements
# - cljstyle
# - Clojure CLI aliases from practicalli/clojure-cli-config
#   - `:env/dev` to include `dev` directory on class path
#   - `:env/test` to include `test` directory and libraries to support testing
#   - `:test/run` to run kaocha kaocha test runner and supporting paths and dependencies
#   - `:repl/rebel` to start a Rebel terminal UI
#   - `:package/uberjar` to create an uberjar for the service
# - docker
# - mega-linter-runner
#
# ------------------------------------------


# .PHONY: ensures target used rather than matching file name
# https://makefiletutorial.com/#phony
.PHONY: all lint deps dist pre-commit-check repl test test-ci test-watch clean


# ------- Makefile Variables --------- #

# run help if no target specified
.DEFAULT_GOAL := help

# Column the target description is printed from
HELP-DESCRIPTION-SPACING := 24

# Example variables (not currently used)
# SWAGGER-EDITOR-DOCKER-IMAGE := swaggerapi/swagger-editor
# GAMEBOARD-API-DOCKER-CONTAINER-NAME := gameboard-api-service

# Makefile file and directory name wildcard
# EDN-FILES := $(wildcard *.edn)

# ------------------------------------ #


# ------- Help ----------------------- #

# Source: https://nedbatchelder.com/blog/201804/makefile_help_target.html

help:  ## Describe available tasks in Makefile
	@grep '^[a-zA-Z]' $(MAKEFILE_LIST) | \
	sort | \
	awk -F ':.*?## ' 'NF==2 {printf "\033[36m  %-$(HELP-DESCRIPTION-SPACING)s\033[0m %s\n", $$1, $$2}'

# ------------------------------------ #

dist: deps  ## Build and package Clojure service
	$(info --------- Build and Package Clojure service ---------)
	$(info Prerequisites newer than target)
	echo $?
	clojure -X:package/uberjar

# Remove files and directories after build tasks
# `-` before the command ignores any errors returned
clean:  ## Clean build temporary files
	$(info --------- Clean Clojure classpath cache ---------)
	- rm -rf ./.cpcache

# ------------------------------------ #


# ------- Clojure Development -------- #

repl:  ## Run Clojure REPL with rich terminal UI (Rebel Readline)
	$(info --------- Run Rebel REPL ---------)
	clojure -M:repl/reloaded

deps: deps.edn  ## Prepare dependencies for test and dist targets
	$(info --------- Download test and service libraries ---------)
	clojure -P -X:build

dist: build-uberjar ## Build and package Clojure service as Uberjar

# Remove files and directories after build tasks
# `-` before the command ignores any errors returned
clean-classpath:  ## Clean build temporary files
	$(info --------- Clean Clojure classpath cache ---------)
	- rm -rf ./.cpcache

# ------------------------------------ #


# ------- Testing -------------------- #

test-config:  ## Run unit tests - stoping on first error
	$(info --------- Runner Configuration ---------)
	clojure -M:test/env:test/run --print-config

test:  ## Run unit tests - stoping on first error
	$(info --------- Runner for unit tests ---------)
	clojure -X:test/env:test/run


test-all:  ## Run all unit tests regardless of failing tests
	$(info --------- Runner for all unit tests ---------)
	clojure -X:test/env:test/run :fail-fast? false

test-watch:  ## Run tests when changes saved, stopping test run on first error
	$(info --------- Watcher for unit tests ---------)
	clojure -X:test/env:test/run :watch? true

test-watch-all:  ## Run all tests when changes saved, regardless of failing tests
	$(info --------- Watcher for unit tests ---------)
	clojure -X:test/env:test/run :fail-fast? false :watch? true

# ------------------------------------ #



# ------- Code Quality --------------- #

pre-commit: format-check lint test  ## Run format, lint and test targets

format-check: ## Run cljstyle to check the formatting of Clojure code
	$(info --------- cljstyle Runner ---------)
	cljstyle check

format-fix:  ## Run cljstyle and fix the formatting of Clojure code
	$(info --------- cljstyle Runner ---------)
	cljstyle fix

lint:  ## Run MegaLinter Java Flavor with custom configuration
	$(info --------- MegaLinter Runner ---------)
	mega-linter-runner --flavor java --env 'MEGALINTER_CONFIG=.github/config/megalinter.yaml'

lint-clean:  ## Clean MegaLinter report information
	$(info --------- MegaLinter Clean Reports ---------)
	- rm -rf ./megalinter-reports

# ------------------------------------ #


# -------- Clojure tools.build tasks --------------- #

build-config: ## Pretty print build configuration
	$(info --------- View current build config ---------)
	clojure -T:build config

build-jar: ## Build a jar archive of Clojure project
	$(info --------- Build library jar ---------)
	clojure -T:build jar

build-uberjar: ## Build a uberjar archive of Clojure project & Clojure runtime
	$(info --------- Build service Uberjar  ---------)
	$(info Prerequisites newer than target)
	echo $?
	clojure -T:build uberjar

build-clean: ## Clean build assets or given directory
	$(info --------- Clean Build  ---------)
	clojure -T:build clean

# ------------------------------------ #


# ------- Documentation Generation ---------- #

docs:  ## Run mkdocs server
	$(info --------- Mkdocs Local Server ---------)
	mkdocs serve --dev-addr localhost:7777

# ------------------------------------ #


# ------- Docker Containers ---------- #

docker-build:  ## Build Clojure Service with docker compose
	$(info --------- Docker Compose Build ---------)
	docker compose up --build

docker-build-clean:  ## Build Clojure Service with docker compose, removing orphans
	$(info --------- Docker Compose Build - remove orphans ---------)
	docker compose up --build --remove-orphans

docker-down:  ## Shut down Clojure service using docker compose
	$(info --------- Docker Compose Down ---------)
	docker compose down

docker-inspect:  ## Inspect given docker image - image-id=12e45fg89
	$(info --------- Docker Image Prune ---------)
	docker inspect --format='{{json .Config}}' $(image-id) | jq

docker-image-prune:  ## Prune docker images
	$(info --------- Docker Image Prune ---------)
	docker image prune

docker-container-prune:  ## Prune docker containers
	$(info --------- Docker Container Prune ---------)
	docker container prune

docker-prune: docker-image-prune docker-image-prune  ## Prune docker images and containers

# --- Local Swagger editor via swagger-editor.yml docker compose configuration
swagger-editor:  ## Start Swagger Editor in Docker
	$(info --------- Run Swagger Editor at locahost:8282 ---------)
	docker compose -f swagger-editor.yaml up -d swagger-editor

swagger-editor-down:  ## Stop Swagger Editor in Docker
	$(info --------- Run Swagger Editor at locahost:8282 ---------)
	docker compose -f swagger-editor.yaml down

# ------------------------------------ #


# ------ Continuous Integration ------ #

# .DELETE_ON_ERROR: halts if command returns non-zero exit status
# https://makefiletutorial.com/#delete_on_error

# TODO: focus runner on ^:integration` tests
test-ci: deps  ## Test runner for integration tests
	$(info --------- Runner for integration tests ---------)
	clojure -P -X:env/test:test/run

# Run tests, build & package the Clojure code and clean up afterward
# `make all` used in Docker builder stage
.DELETE_ON_ERROR:
all: test-ci dist clean  ## Call test-ci dist and clean targets, used for CI

# ------------------------------------ #

