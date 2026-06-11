ci: clean stage deps test-node-cli test-node-cli-partials test-node-lib test-node-lib-partials

clean:
	rm -rf stage/

stage:
	mkdir -p stage/

deps:
	npm install .

########################################
# node-cli targets
########################################

clean-node-cli:
	rm -rf stage/node-cli/

generate-node-cli: clean-node-cli
	node_modules/.bin/plop node-cli

test-node-cli: clean-node-cli
	node_modules/.bin/plop node-cli -- \
	    --project_id "nodecli" \
		--project_name "NodeCLI" \
		--project_desc "A sample Node CLI project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot" \
		--github_repo "node-cli" \
		--github_token_prefix "STUDIO"
	cd stage/node-cli/ && make deps-extra-apt ci && \
	  cd examples/ && ./nodecli-cli.sh

########################################
# node-cli-partials targets
########################################

clean-node-cli-partials:
	rm -rf stage/node-cli-partials/

generate-node-cli-partials: clean-node-cli-partials
	node_modules/.bin/plop node-cli-partials

test-node-cli-partials: clean-node-cli-partials
	node_modules/.bin/plop node-cli-partials -- \
	    --project_id "nodecli" \
		--project_name "NodeCLI" \
		--project_desc "A sample Node CLI project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot" \
		--github_repo "node-cli" \
		--github_token_prefix "STUDIO"

########################################
# node-lib targets
########################################

clean-node-lib:
	rm -rf stage/node-lib/

generate-node-lib: clean-node-lib
	node_modules/.bin/plop node-lib

test-node-lib: clean-node-lib
	node_modules/.bin/plop node-lib -- \
	    --project_id "nodelib" \
		--project_name "NodeLib" \
		--project_desc "A sample Node library project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot" \
		--github_repo "node-lib" \
		--github_token_prefix "STUDIO"
	cd stage/node-lib/ && make deps-extra-apt ci && \
	  cd examples/

########################################
# node-lib-partials targets
########################################

clean-node-lib-partials:
	rm -rf stage/node-lib-partials/

generate-node-lib-partials: clean-node-lib-partials
	node_modules/.bin/plop node-lib-partials

test-node-lib-partials: clean-node-lib-partials
	node_modules/.bin/plop node-lib-partials -- \
	    --project_id "nodelib" \
		--project_name "NodeLib" \
		--project_desc "A sample Node library project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot" \
		--github_repo "node-lib" \
		--github_token_prefix "STUDIO"

update-suntory-to-latest:
	cd templates/node-cli && make update-to-latest
	cd templates/node-lib && make update-to-latest

.PHONY: ci clean clean-node-cli clean-node-cli-partials clean-node-lib clean-node-lib-partials stage deps generate-node-cli test-node-cli generate-node-cli-partials test-node-cli-partials generate-node-lib test-node-lib generate-node-lib-partials test-node-lib-partials update-suntory-to-latest