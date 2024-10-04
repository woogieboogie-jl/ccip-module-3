// script/XNFTAvalancheFuji.s.sol

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "forge-std/Script.sol";
import {XNFT} from "../src/XNFT.sol";

contract DeployXNFTAvalancheFuji is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        address ccipRouterAddressAvalancheFuji = 0xF694E193200268f9a4868e4Aa017A0118C9a8177;
        address linkTokenAddressAvalancheFuji = 0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846;
        uint64 chainSelectorAvalancheFuji = 14767482510784806043;

        XNFT xNft = new XNFT(
            ccipRouterAddressAvalancheFuji,
            linkTokenAddressAvalancheFuji,
            chainSelectorAvalancheFuji
        );

        console.log(
            "XNFT deployed to ",
            address(xNft)
        );

        vm.stopBroadcast();
    }
}
