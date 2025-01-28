va// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Only one construct for a smart contract
// used for declare the state variable

contract _constructor{
    uint public age;
    address public owner;
    string public name;


    constructor(string memory _name, uint _age, address _owner) {
        age = _age;
        owner = _owner;
        name = _name;
    }

}