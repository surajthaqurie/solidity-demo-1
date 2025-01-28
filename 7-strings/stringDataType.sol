// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

// string - behave like array and struct dataType
contract stringDataType{
    
    string public str = "Suraj"; //state variable

    function checkString(string memory _str1) public pure returns  (string memory) {
        // string name = "Chand"; // string by default store in the storage (blockchain), so available create as local variable
        string memory name = _str1; // memory keyboard used to make local variable
        
        return name;
    }

}