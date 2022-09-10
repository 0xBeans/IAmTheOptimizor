//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {console} from "forge-std/console.sol";

contract Player2 {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function solve(uint256[10] calldata arr, uint256 n)
        external
        pure
        returns (uint256[3] memory)
    {
        uint256[3] memory res;
        unchecked {
            for (uint256 i = 0; i < 10; i++) {
                for (uint256 j = 0; j < 10; j++) {
                    for (uint256 k = 0; k < 10; k++) {
                        if (arr[i] + arr[j] + arr[k] == n) {
                            res[0] = i;
                            res[1] = j;
                            res[2] = k;

                            return res;
                        }
                    }
                }
            }
        }
    }
}
