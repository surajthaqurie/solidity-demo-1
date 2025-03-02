// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// we can achieve the work of receive from fallback but from receive we can't achieve the fallback works
/* Fallback: (data bytes, ether payable) by default takes data
    It is executed when a non-existent function is called on the contract
    It is required to be marked external (visibility)
    It has no name 
    It has no arguments
    it can no return any thing
    It can be defined one per contract
    If no marked payable, it will throw exception if contract receives ether.
    It's main use is to directly send the ETCH to contract
 */

// Testing- low level interaction (data-bytes (0x825678))
// Both fallback and receive are defined
// If data and ether comes then fallback catch
// if only ether comes then receive catch

/* Receive: 
    only takes ether
    always payable
 */

contract fallback_receive{

    event log(string _fun, address _sender, uint _value, bytes _data);

    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
     }

    receive() external payable { 
        emit log("receive", msg.sender, msg.value, "");

    }


    function checkBalance() public  view returns (uint){
        return address(this).balance;
    }
    
}
