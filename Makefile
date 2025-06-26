build:
	forge build


# Deployment Tokens

deploy_token_avalanche_fuji:

	forge script script/DeployToken.s.sol --rpc-url $AVLANCHE_FUJI_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify



deploy_token_arbitrium_sepolia:

	forge script script/DeployToken.s.sol --rpc-url $ARBITRUM_SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify



# Deploy Burn and Mint Pools

deploy_burn_mint_pool_avalanche_fuji:
	forge script script/DeployBurnMintTokenPool.s.sol --rpc-url $AVLANCHE_FUJI_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify


deploy_burn_mint_pool_arbitrium_sepolia:
	forge script script/DeployBurnMintTokenPool.s.sol --rpc-url $ARBITRUM_SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify



# Deploy Claim Admin Roles with EOA(metamask)

deploy_claim_admin_role_avalanche_fuji:
	forge script script/ClaimAdmin.s.sol --rpc-url $AVLANCHE_FUJI_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify




deploy_claim_admin_role_arbitrium_sepolia:
	forge script script/ClaimAdmin.s.sol --rpc-url $ARBITRUM_SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify



# Deploy Accept Admin Roles with your EOA(metamask)

deploy_accept_admin_role_avalanche_fuji:
	forge script script/AcceptAdminRole.s.sol --rpc-url $AVLANCHE_FUJI_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify



deploy_accept_admin_role_arbitrium_sepolia:
	forge script script/AcceptAdminRole.s.sol --rpc-url $ARBITRUM_SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify



# Deploy Set Token Pool for Deployed Token -> This will show token and pool address echoed back

deploy_token_pool_avalanche_fuji:
	forge script script/SetPool.s.sol --rpc-url $AVLANCHE_FUJI_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify


deploy_token_pool_arbitrium_sepolia:
	forge script script/SetPool.s.sol --rpc-url $ARBITRUM_SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify




# Deploy Apply Chain Updates -> This will Set Router for Remote Chains and Corresponding Token Pool

deploy_apply_chain_updates_avalanche_fuji:
	forge script script/ApplyChainUpdates.s.sol --rpc-url $AVLANCHE_FUJI_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify


deploy_apply_chain_updaes_arbitrium_sepolia:
	forge script script/ApplyChainUpdates.s.sol --rpc-url $ARBITRUM_SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify







