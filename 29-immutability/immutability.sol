a// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;


// immutability- similar as constant but transactional cost is greater than constant
// state variable value not change
// value can assigned inline and through constructor

contract Immutable{
    // address public immutable owner= msg.sender; // inline
    address public immutable owner;
    address public constant owner2 = address(1);
    address public owner3 = address(1);

    constructor(address _owner){
        owner = _owner;
    }

    function check() public {
        // owner = address(1); // should not be change
    }


    function I() public view returns (address){
        return  owner;
    }

     function C() public pure returns (address){
        return  owner2;
    }

     function S() public view returns (address){
        return  owner3;
    }

}