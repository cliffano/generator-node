ci: clean stage deps test-node-cli test-node-lib

clean:
	rm -rf stage/

clean-node-cli:
	rm -rf stage/node-cli/

clean-node-lib:
	rm -rf stage/node-lib/

stage:
	mkdir -p stage/

deps:
	npm install .

generate-node-cli: clean-node-cli
	node_modules/.bin/plop node-cli

test-node-cli:
	node_modules/.bin/plop node-cli -- \
	    --project_id "nodecli" \
		--project_name "NodeCLI" \
		--project_desc "A sample Node CLI project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot" \
		--github_repo "node-cli"
	cd stage/node-cli/ && make deps-extra-apt ci && \
	  cd examples/ && ./nodecli-cli.sh

generate-node-lib: clean-node-lib
	node_modules/.bin/plop node-lib

test-node-lib:
	node_modules/.bin/plop node-lib -- \
	    --project_id "nodelib" \
		--project_name "NodeLib" \
		--project_desc "A sample Node library project" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot" \
		--github_repo "node-lib"
	cd stage/node-lib/ && make deps-extra-apt ci && \
	  cd examples/

update-piemaker-to-latest:
	cd templates/node-cli && make update-to-latest
	cd templates/node-lib && make update-to-latest

.PHONY: ci clean clean-node-cli clean-node-lib stage deps generate-node-cli generate-node-lib test-node-cli test-node-lib update-piemaker-to-latest