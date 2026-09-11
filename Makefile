ci: clean stage deps test-node-cli test-node-cli-partials test-node-lib test-node-lib-partials

clean:
	rm -rf stage/

stage:
	mkdir -p stage/

deps:
	npm install .

########################################
# Utility targets
########################################

GENERATOR_CONFIG ?= suntory.yml

define set_generator_vars
$(1): GENERATOR_COMPONENT = $$(shell yq .generator.component $(2))
$(1): GENERATOR_INPUTS_PROJECT_ID = $$(shell yq .generator.inputs.project_id $(2))
$(1): GENERATOR_INPUTS_PROJECT_NAME = $$(shell yq .generator.inputs.project_name $(2))
$(1): GENERATOR_INPUTS_PROJECT_DESC = $$(shell yq .generator.inputs.project_desc $(2))
$(1): GENERATOR_INPUTS_AUTHOR_NAME = $$(shell yq .generator.inputs.author_name $(2))
$(1): GENERATOR_INPUTS_AUTHOR_EMAIL = $$(shell yq .generator.inputs.author_email $(2))
$(1): GENERATOR_INPUTS_AUTHOR_URL = $$(shell yq .generator.inputs.author_url $(2))
$(1): GENERATOR_INPUTS_GITHUB_ID = $$(shell yq .generator.inputs.github_id $(2))
$(1): GENERATOR_INPUTS_GITHUB_REPO = $$(shell yq .generator.inputs.github_repo $(2))
$(1): GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX = $$(shell yq .generator.inputs.github_token_prefix $(2))
endef

########################################
# node-cli targets
########################################

clean-node-cli:
	rm -rf stage/node-cli/

generate-node-cli: clean-node-cli
	node_modules/.bin/plop node-cli

$(eval $(call set_generator_vars,generate-node-cli-with-config,$(GENERATOR_CONFIG)))
generate-node-cli-with-config: clean-node-cli
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-node-cli: clean-node-cli
	make generate-node-cli-with-config GENERATOR_CONFIG=examples/suntory-node-cli.yml
	cd stage/node-cli/ && make deps ci && \
	  cd examples/ && ./nodecli-cli.sh

########################################
# node-cli-partials targets
########################################

clean-node-cli-partials:
	rm -rf stage/node-cli-partials/

generate-node-cli-partials: clean-node-cli-partials
	node_modules/.bin/plop node-cli-partials

$(eval $(call set_generator_vars,generate-node-cli-partials-with-config,$(GENERATOR_CONFIG)))
generate-node-cli-partials-with-config: clean-node-cli-partials
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-node-cli-partials: clean-node-cli-partials
	make generate-node-cli-partials-with-config GENERATOR_CONFIG=examples/suntory-node-cli-partials.yml

########################################
# node-lib targets
########################################

clean-node-lib:
	rm -rf stage/node-lib/

generate-node-lib: clean-node-lib
	node_modules/.bin/plop node-lib

$(eval $(call set_generator_vars,generate-node-lib-with-config,$(GENERATOR_CONFIG)))
generate-node-lib-with-config: clean-node-lib
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-node-lib: clean-node-lib
	make generate-node-lib-with-config GENERATOR_CONFIG=examples/suntory-node-lib.yml
	cd stage/node-lib/ && make deps ci && \
	  cd examples/

########################################
# node-lib-partials targets
########################################

clean-node-lib-partials:
	rm -rf stage/node-lib-partials/

generate-node-lib-partials: clean-node-lib-partials
	node_modules/.bin/plop node-lib-partials

$(eval $(call set_generator_vars,generate-node-lib-partials-with-config,$(GENERATOR_CONFIG)))
generate-node-lib-partials-with-config: clean-node-lib-partials
	node_modules/.bin/plop $(GENERATOR_COMPONENT) -- \
	    --project_id "$(GENERATOR_INPUTS_PROJECT_ID)" \
		--project_name "$(GENERATOR_INPUTS_PROJECT_NAME)" \
		--project_desc "$(GENERATOR_INPUTS_PROJECT_DESC)" \
		--author_name "$(GENERATOR_INPUTS_AUTHOR_NAME)" \
		--author_email "$(GENERATOR_INPUTS_AUTHOR_EMAIL)" \
		--author_url "$(GENERATOR_INPUTS_AUTHOR_URL)" \
		--github_id "$(GENERATOR_INPUTS_GITHUB_ID)" \
		--github_repo "$(GENERATOR_INPUTS_GITHUB_REPO)" \
		--github_token_prefix "$(GENERATOR_INPUTS_GITHUB_TOKEN_PREFIX)"

test-node-lib-partials: clean-node-lib-partials
	make generate-node-lib-partials-with-config GENERATOR_CONFIG=examples/suntory-node-lib-partials.yml

update-suntory-to-latest:
	cd templates/node-cli && make update-to-latest
	cd templates/node-lib && make update-to-latest

.PHONY: ci clean clean-node-cli clean-node-cli-partials clean-node-lib clean-node-lib-partials stage deps generate-node-cli generate-node-cli-with-config test-node-cli generate-node-cli-partials generate-node-cli-partials-with-config test-node-cli-partials generate-node-lib generate-node-lib-with-config test-node-lib generate-node-lib-partials generate-node-lib-partials-with-config test-node-lib-partials update-suntory-to-latest