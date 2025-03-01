// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Require: (condition, error) - condition should be true otherwise error
    // Error handling - gas refund (if the require is used the than whole function rollback) 
    // input validation 
    // access control



contract Require{
    address public owner = msg.sender;
    uint public age = 99;


    function CheckRequire(uint _x) public {
        age = age + 5;
        require(_x > 2,"Value of x is less then 2");  

    }

    function onlyOwner()public {
        age = age + 10;
        require (msg.sender==owner, "Only owner can call this function!");
    }
}