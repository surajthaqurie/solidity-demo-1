// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// 1 byte = 8 bit
// 1 hex decimal digit = 4 bit
// 1 byte = 2 hexa decimal digits

// DataType - value | reference
    // value - unit, address, int, bytes
    // reference - string, array
// Store in hexdecimal- https://www.rapidtables.com/code/text/ascii-table.html


contract fixedBytes{
    bytes5 public temp1; // 0x0000000000
    bytes7 public temp2; //0x00000000000000
    bytes7 public temp3; //0x00000000000000


    function setValue() public {
        temp1 ="abcde"; // 0x6162636465
        temp2 = "12abcde"; //0x31326162636465
        temp3 = "12abc"; // 0x3132616263"0000" -- padding

    }


    function getDigit() public view returns (bytes1){
        return temp1[2]; 
    }

    function getLength () public view  returns (uint){
        return  temp1.length;
    }
}