// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Revert:
    // Error handling inside the function - gas refund and undo the change in state variable
    // Similar like require but condition are checked by if else
    // custom error
    
//Assert: bug check, security



contract Revert_Assert{
    address public owner = msg.sender;
    uint public age = 99;

    error throwError(string,address); //custom error

    function CheckRevert(uint _x) public {
        age = age + 5;
        if(_x<2){
            // revert ("Value of x is less then 2");
            revert throwError("Value of x is less then 2",msg.sender); // reduce the gas cost
        }
    }


    function onlyOwner()public {
        if(msg.sender!=owner){
            revert("Only owner can call this function!");
        }

        age = age + 10;
 
    }

    //Assert 
    function checkOwnerShip() public view {
        assert(owner == msg.sender);
    }
}