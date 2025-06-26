-include .env

SHELL := /bin/bash

.PHONY: all build load-env deploy-local deploy-token-avalanche-fuji deploy-token-arbitrium-sepolia deploy-burn-mint-pool-avalanche-fuji deploy-burn-mint-pool-arbitrium-sepolia deploy-claim-admin-role-avalanche-fuji deploy-claim-admin-role-arbitrium-sepolia deploy-accept-admin-role-avalanche-fuji deploy-accept-admin-role-arbitrium-sepolia deploy-token-pool-avalanche-fuji deploy-token-pool-arbitrium-sepolia deploy-apply-chain-updaes-avalanche-fuji deploy-apply-chain-updates-arbitrium-sepolia deploy-mint-token-avalanche-fuji

all: build load-env deploy-local deploy-token-avalanche-fuji deploy-token-arbitrium-sepolia deploy-burn-mint-pool-avalanche-fuji deploy-burn-mint-pool-arbitrium-sepolia deploy-claim-admin-role-avalanche-fuji deploy-claim-admin-role-arbitrium-sepolia deploy-accept-admin-role-avalanche-fuji deploy-accept-admin-role-arbitrium-sepolia deploy-token-pool-avalanche-fuji deploy-token-pool-arbitrium-sepolia deploy-apply-chain-updaes-avalanche-fuji deploy-apply-chain-updates-arbitrium-sepolia deploy-mint-token-avalanche-fuji

build:; forge build


load-env:; @source .env

# Deploy Tokens

deploy-local: 
	@forge script script/DeployToken.s.sol:DeployToken --rpc-url http://localhost:8545 --private-key $(ANVIL_PRIVATE_KEY) --broadcast --verbosity

deploy-token-avalanche-fuji:

	@forge script script/DeployToken.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify



deploy-token-arbitrium-sepolia:

	@forge script script/DeployToken.s.sol --rpc-url $(ARBITRUM_SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify



# Deploy Burn and Mint Pools

deploy-burn-mint-pool-avalanche-fuji:
	@forge script script/DeployBurnMintTokenPool.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify


deploy-burn-mint-pool-arbitrium-sepolia:
	@forge script script/DeployBurnMintTokenPool.s.sol --rpc-url $(ARBITRUM_SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify



# Deploy Claim Admin Roles with EOA(metamask)

deploy-claim-admin-role-avalanche-fuji:
	@forge script script/ClaimAdmin.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY)--broadcast --verify




deploy-claim-admin-role-arbitrium-sepolia:
	@forge script script/ClaimAdmin.s.sol --rpc-url $(ARBITRUM_SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify



# Deploy Accept Admin Roles with your EOA(metamask)

deploy-accept-admin-role-avalanche-fuji:
	@forge script script/AcceptAdminRole.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify



deploy-accept-admin-role-arbitrium-sepolia:
	@forge script script/AcceptAdminRole.s.sol --rpc-url $(ARBITRUM_SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify



# Deploy Set Token Pool for Deployed Token -> This will show token and pool address echoed back

deploy-token-pool-avalanche-fuji:
	@forge script script/SetPool.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify


deploy-token-pool-arbitrium-sepolia:
	@forge script script/SetPool.s.sol --rpc-url $(ARBITRUM_SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify




# Deploy Apply Chain Updates -> This will Set Router for Remote Chains and Corresponding Token Pool

deploy-apply-chain-updates-avalanche-fuji:
	@forge script script/ApplyChainUpdates.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify


deploy-apply-chain-updates-arbitrium-sepolia:
	@forge script script/ApplyChainUpdates.s.sol --rpc-url $(ARBITRUM_SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify


deploy-mint-token-avalanche-fuji:
	@forge script script/MintTokens.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast 

deploy-mint-token-arbitrium-sepolia:
	@forge script script/MintTokens.s.sol --rpc-url $(ARBITRUM_SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast


# Sending the token to avala
deploy-send-cross-chain-avalanche-fuji:
	@forge script script/TransferTokens.s.sol --rpc-url $(AVLANCHE_FUJI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast