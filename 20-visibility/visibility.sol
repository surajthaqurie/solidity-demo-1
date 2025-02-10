// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Defines - state variable and function
// which can access that (potential caller)
// types: (Order with gas cost)
    //1. private - within only
    //2. internal - within and child contract
    //3. external - not for state variable only for function. not allowed in withing and child contract. another contract and outside world
    //4. public - all should all within, child contract, another contract and outside world

// potential caller:
    //1. contract itself
    //2. one contract call another contract (inheritance)
    //3. one contract call another contract (no inheritance)
    //4. outside world
// state variable by default internal
// function by default public but we have to define


contract A{
     uint private x =10; // only with in the contract
     uint internal y =100; // within the contract and in Child contract
     uint public z = 1000; //everywhere

    // uint external a = 123; //not allowed


     function check1() private pure returns (string memory){
        return  "private";
     }

     function check2() internal pure  returns (string memory){
        return  "internal";
     }
     
     function check3() external pure  returns (string memory){
        return  "external";
     }
          
    function check4() public pure  returns (string memory){
        return  "public";
     }

     function checkAllVariable() public view returns (uint){
        // return  x; //allowed
        // return y; //allowed
        return z; //allowed
     }

    function checkAllFunction() public pure returns (string memory){
        // return check1(); //allowed
        // return check2(); //allowed
        // return check3(); //not allowed
        return  check4(); //allowed
     }
}

// Child Contract (B is child of A)
contract B is A{
    // uint a = x; // not allowed
    // uint a = y; // allowed
    uint public a = z; // allowed

    // string funCall = check1(); //not allowed
    // string public funCall = check2(); //allowed
    // string funCall = check3(); //not allowed
    string funCall = check4(); //allowed   

}

contract C{

    A obj = new A(); //Creating object
    // uint public a = obj.x(); //not allowed
    // uint public a = obj.y(); //not allowed
    // uint public a = obj.z(); //allowed

    function anotherCaller() public view returns (string memory){
        // return obj.check1(); //not allowed
        // return obj.check2(); //not allowed
        // return obj.check3(); //allowed
        return obj.check4(); //allowed
    }
}