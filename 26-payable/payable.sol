// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// make addresses payable: can send ethers to that address through respectively contract
// make functions payable: can send ethers to the contract where that function defines
// payable function should not be view or pure
// this- reference current contract
// payable key should be define before visibility of the address and in the function can define after visibility
// address payable should be type cast with payable 
// 1ETH = 10^ 8Wei

// Actions buttons
    // Red- payable
    // Blue- state variable, view or pure
    // Yellow - transactional function

contract Payable{
    address payable  public owner = payable(msg.sender);

    // constructor() payable {} // in deployment can send eth to the contract

    function getETH() public payable{

    }

    function checkBalance() public  view returns (uint){
        return address(this).balance;
    }
}