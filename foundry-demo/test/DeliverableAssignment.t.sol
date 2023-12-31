// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "forge-std/Test.sol";
import "../src/DeliverableAssignment.sol";
contract FoundryDemoTest is Test {
  DeliverableAssignment instance;
  uint256 internal testNumber = 27;
  address internal testAddress = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

  function setUp() public {
    instance = new DeliverableAssignment();
  }

  function test_SecretNumber() public {
    assertEq(testNumber, instance.secretNumber(), "Test failed: Secret numbers don't match");
  }

  function testFail_Owner() public {
    assertEq(testAddress, instance.owner(), "Test failed: Owner addresses don't match");
  }
}