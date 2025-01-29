// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;


contract ternary{
    
    function fun(uint _x) public pure returns (string memory){
        string memory val;

        // if(_x > 100){
        //     val = "greater";
        // }
        // else {
        //     val = "equal or smaller";
        // }

        val = _x > 100? "greater":"equal or smaller";
        return val;
    }
}