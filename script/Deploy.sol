// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/IAmTheOptimizor.sol";

contract Deploy is Script {
    function run() public {
        vm.broadcast();
        IAmTheOptimizor optimizor = new IAmTheOptimizor();

        optimizor.changeTokenURI(
            "ipfs://QmT8JZGU9ymodKPciM3MEPzLyQg5Xm5w4U89REQZ8PdEJS"
        );
    }
}
