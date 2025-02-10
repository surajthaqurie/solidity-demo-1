// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Data types
// key value pairs (object in js)
// not used in file level (contract level) and not also in function only use inside contract
// key-> enums, contract

contract Mapping{
    mapping (uint=>string) public emp_id;

    function setIds() public {
        emp_id[31] = "Rohit";
        emp_id[28] = "Ankit";
        emp_id[45] = "Sagar";
        emp_id[30] = "Suraj";
    
    }

    function getId(uint _id)public view returns (string memory){
         return  emp_id[_id];   
    }
}


