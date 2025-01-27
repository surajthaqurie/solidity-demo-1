// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


// File name and smart contract name should be same
// case-insensitive

contract functionIntro{
    uint age=20;

    //function
    function add(uint x, uint _y) public pure returns  (uint){
        return x +_y;
    }

    function changeAge() public {
        age+=1;
    }

    function getAge() public view returns (uint){
        return age;
    }

    function func() internal {
        // code;
    }
}


// Outside function should be visible
function dummy(uint _x) pure returns (uint){
return  _x*10;
}