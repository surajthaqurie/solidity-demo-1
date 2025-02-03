// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Array are reference type- storage
// len, update, delete, get
// default value - according to its element default value
// inside memory only fixed array are created no dynamic array
// returning array cost more gas

contract fixedArray{
    uint[5] public arr = [1, 5, 6, 7, 9]; // array declaration
    uint[5] public arr2;
    uint [5] array3;

    constructor(){
        array3 = [10,20,30,40,50];
    }


    function returnArray () public view returns (uint[5] memory){
        return  array3;
    }

    function array() public returns (uint){
        //get
        uint temp;
        temp = arr[4];

        //Update
        arr[2]= 3000;

        //delete 
        delete arr[1];

        //Length 
        uint len = arr.length;
        return  len;   
    }


    function arrayWithLoop (uint _x) public {
        for(uint i = 0; i < arr2.length; i++){
            arr2[i] =_x + i;
        }
    }

    function createArray() public pure returns (uint){
        uint[] memory arrMem =  new uint[](3);
        arrMem[1]=33;

        return  arrMem[1];

    }
}
