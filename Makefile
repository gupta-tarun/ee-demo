MOCHA_COV=node_modules/.bin/_mocha
MOCHA=node_modules/.bin/mocha
ISTANBUL=./node_modules/istanbul/lib/cli.js
STANDARDLINT=./node_modules/standard/bin/cmd.js 

ENVIRONMENT_VARIABLES = NODE_ENV=unittest

test:
		@$(ENVIRONMENT_VARIABLES) \
		$(STANDARDLINT) && $(MOCHA) --recursive -R spec -t 15000 testFiles

debug:
		@$(ENVIRONMENT_VARIABLES) \
		$(MOCHA) --debug-brk test

coverage:
		@$(ENVIRONMENT_VARIABLES) \
		$(STANDARDLINT) && $(ISTANBUL) cover $(MOCHA_COV) testFiles/**/*

.PHONY: test debug coverage
