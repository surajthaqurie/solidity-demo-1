// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

/* send Ether to account or another contract:
     1. send - returns bool value - limit 2300 gas - no revert if transaction fails- use require
     2. transfer - no returns value - limit 2300 gas - revert if transaction fails
     3. call - returns bool value and data in bytes  - gas limit set by us - no revert if transaction fails- use require
*/


contract SendEtherReceive {
    // address payable public getter = payable (0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

   receive() external payable { }

    function checkBalance() public  view returns (uint){
        return address(this).balance;
    }

    function SEND(address payable getter) public {
      bool sent =  getter.send(1000000000000000000); //Wei
      require(sent,"Transaction failed, ether not sent");

    }

    function TRANSFER (address payable getter) public  {
        getter.transfer(1000000000000000000); // Wei
    }

    function CALL (address payable getter) public {
        // if gas limit is not defined, gas limit is remix id gas limit
        // getter.call{value:10000000000000, gas:""}("")
        
        (bool sent,)= getter.call{value:10000000000000}("");
        require(sent,"Transaction failed, ether not sent");
    }

}

contract SendEtherPayable {

    event log (uint value);

    function checkBalance() public  view returns (uint){
        return address(this).balance;
    }

    function SEND(address payable getter) public payable{
      emit log(msg.value);
      bool sent =  getter.send(msg.value); //Wei

      require(sent,"Transaction failed, ether not sent");

    }

    function TRANSFER (address payable getter) public payable {
        emit log(msg.value);
        getter.transfer(msg.value); // Wei
    }

    function CALL (address payable getter) public payable{
        emit log(msg.value);
       
        (bool sent,)= getter.call{value:msg.value}("");
        require(sent,"Transaction failed, ether not sent");
    }
}


contract GetETH{
    receive() external payable { }
     
    function checkBalance() public  view returns (uint){
        return address(this).balance;
    }
}