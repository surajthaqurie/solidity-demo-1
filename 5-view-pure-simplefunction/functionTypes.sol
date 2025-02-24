// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

// view-> Readonly, blockchain, state variables, global variables and not writeable
// pure -> Not readonly not writeable
// simple-> writeable -> transactional function (no returns) 

contract functionTypes{

    uint public age = 20;

    function viewFunc() public view returns (uint){
        return age;
    } 

    function pureFunc1() public pure returns (uint) {
        return 1;
    }

    function pureFunc2(uint _x) public pure returns (uint) {
        return _x;
    }

    function simpleFunction() public {
        age = age+10;
    }

    function dummy() public view returns (uint) {
        return age+10;
    }

}