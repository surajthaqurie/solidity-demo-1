// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// push and pop
// not created inside function


contract dynamicArray{
    uint[] public arr =[10,20,30,40,50];

    function returnArray() public view  returns (uint[] memory) {

    return  arr;
    }
    
    function fun() public {
        //get
        uint temp = arr[3];
        
        //update
        arr[4]= 222;

        // delete 
        delete arr[1]; //[10,0,30,40,50];

        uint len = arr.length; //5
        
        //push 
        arr.push(606); //[10,0,30,40,50,606];

        //pop
        arr.pop(); //[10,0,30,40,50];

    }
}