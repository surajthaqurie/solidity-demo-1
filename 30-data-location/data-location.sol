// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;


// storage, memory and calldata
// storage - hold state variable, inside blockchain - gas cost, permanent
// memory - local variable (function), inside ram (stack), temporary, low gas cost 
// calldata - Ram (stack) - function input, low gas cost - not changeable - same address


contract dataLocation{
   
    uint[] public arr = [1,3,7,9,22];

    function Storage() public {

        uint[] storage arrs = arr; //same address
        arrs[3] = 99;


    }

    function Memory() public view {
        uint[] memory arrm = arr; //copy

        arrm[1] = 192;
    }

    function Memory2(string memory str, uint[] memory arrm) public {
        getInMemory(arrm);
        // getInCall(arrm); // not able to call mermory to calldata
    }

    function Calldata(string calldata str, uint[] calldata arrc) public {
        getInMemory(arrc);
        getInCall(arrc);

    }

    function getInMemory (uint[] memory arrm)public {}

    function getInCall(uint[] calldata arrc)public {}



}

