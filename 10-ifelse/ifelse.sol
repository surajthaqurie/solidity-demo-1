// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Works in function label

contract ifElse{

    function fun (uint _x) public pure returns (string memory){

        string memory val;

        if(_x>100){
            val = "Greater than 100";
        }else if (_x<100){
            val = "Smaller than 100";
        }else {
            val = "Equals to 100";
        }

        return val;
    }
}