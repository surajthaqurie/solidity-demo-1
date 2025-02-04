// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

contract dynamicBytes{
    bytes public temp1; // 0x
    bytes public temp2; 

    constructor(){
        temp2 ="12abcde";
    }

    function setValue() public {
        temp1 ="abcde"; // 0x6162636465
    }


    function pushElement() public  {
        temp2.push("c");
    }

      function popElement() public  {
        temp2.push();
    }

    function getDigit() public view returns (bytes1){
        return temp1[2]; 
    }

    function getLength () public view  returns (uint){
        return  temp1.length;
    }

    function getDigit(uint _idx) public view returns (bytes1){
        return temp1[_idx]; 
    }
}