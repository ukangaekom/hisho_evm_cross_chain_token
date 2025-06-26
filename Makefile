build:




deploy_local:




deploy_avalanche_fuji:
	forge script script/DeployToken.s.sol --rpc-url $AVLANCHE_FUJI_RPC_URL --private-key $PRIVATE_KEY --broadcast



deploy_arbitrium_sepolia:
	forge script script/DeployToken.s.sol --rpc-url $ARBITRUM_SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast


