-include .env

COMMON_DEPLOYMENT_FLAGS := --broadcast --with-gas-price 100000000 --optimizer-runs 8000 --verify

start-node :; anvil --fork-url ${ARBITRUM_RPC_URL}

.PHONY: coverage
coverage: 
	./sh-script/coverage.sh

.PHONY: deploy
deploy:
	forge script script/CONTRACT.s.sol --rpc-url ${ARBITRUM_RPC_URL} $(COMMON_DEPLOYMENT_FLAGS) 

.PHONY: test
test-arbitrum:
	forge test --match-path test/CONTRACT.t.sol --fork-url ${ARBITRUM_RPC_URL}

	