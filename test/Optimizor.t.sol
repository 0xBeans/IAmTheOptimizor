// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/IAmTheOptimizor.sol";
import "./MockPlayer1.sol";
import "./MockPlayer2.sol";

contract OptimizorTest is Test {
    IAmTheOptimizor public optimizor;
    Player1 public player1;
    Player2 public player2;

    address admin = address(0x11);
    address user1 = address(0xaa);
    address user2 = address(0xbb);

    function setUp() public {
        vm.prank(admin);
        optimizor = new IAmTheOptimizor();
    }

    function testTakeOver() public {
        assertEq(optimizor.balanceOf(admin), 1, "0 balanace");
        assertEq(optimizor.ownerOf(1), admin, "admin not owner");

        vm.startPrank(user1);
        player1 = new Player1();
        optimizor.becomeTheOptimizor(address(player1));
        vm.stopPrank();

        assertEq(optimizor.balanceOf(admin), 0, "not 0 balanace");
        assertEq(optimizor.ownerOf(1), user1, "user1 not owner");

        vm.warp(33333);

        vm.startPrank(user2);
        player2 = new Player2();
        optimizor.becomeTheOptimizor(address(player2));
        vm.stopPrank();

        assertEq(optimizor.balanceOf(admin), 0, "not 0 balanace");
        assertEq(optimizor.balanceOf(user1), 0, "not 0 balanace");
        assertEq(optimizor.ownerOf(1), user2, "user2 not owner");
    }
}
