

# CCIP Module 3


### Deployed Contracts
Avalanche Fuji: `0xe53515D7834a4771fa1F917571Ef73b8CfB40E1D`
Arbitrum Sepolia: `0x9f9D35C26E4f34E5C39a361f3390F38E583B15d0`


### Enable from Avalanche Fuji - Arbitrum Sepolia
```cast send 0xe53515D7834a4771fa1F917571Ef73b8CfB40E1D --rpc-url avalancheFuji --private-key=$PRIVATE_KEY "enableChain(uint64,address,bytes)" 3478487238524512106 0x9f9D35C26E4f34E5C39a361f3390F38E583B15d0 0x97a657c90000000000000000000000000000000000000000000000000000000000030d40```

### Enable from Arbitrum Sepolia Fuji - Avalanche Fuji
```cast send 0x9f9D35C26E4f34E5C39a361f3390F38E583B15d0 --rpc-url arbitrumSepolia --private-key=$PRIVATE_KEY "enableChain(uint64,address,bytes)" 14767482510784806043 0x9f9D35C26E4f34E5C39a361f3390F38E583B15d0 0x97a657c90000000000000000000000000000000000000000000000000000000000030d40```

### Mint NFT from Avalanche Fuji
```cast send 0xe53515D7834a4771fa1F917571Ef73b8CfB40E1D --rpc-url avalancheFuji --private-key=$PRIVATE_KEY "mint()”```

### Send Transaction from XNFT of Avalanche Fuji to Arbitrum Sepolia
```cast send 0xe53515D7834a4771fa1F917571Ef73b8CfB40E1D --rpc-url avalancheFuji  --private-key=$PRIVATE_KEY "crossChainTransferFrom(address,address,uint256,uint64,uint8)" 0xE3085765a3C228768957B434fb309291CB5d31aa 0xE3085765a3C228768957B434fb309291CB5d31aa 0 3478487238524512106 1```
