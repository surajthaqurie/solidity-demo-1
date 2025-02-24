// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;


// order of inheritance-> base like(less parent) to drived
// inheritance the properties-> right to left and depth first manner
// if same function inside more than two contract we have to override with contract name as parameter where these function are defined

contract A{
    uint public  a;

    constructor (){
        a = 100;
    }

    function funA() public {
        a = 10;
    }

function fun() public pure virtual  returns (string memory){
    return  "Im in contract A";
}

}



contract B is A{
    uint public  b;

    constructor (){
        b = 200;
        a=50;
    }

    function funB() public {
        b = 20;
    }


    function fun() public pure virtual  override returns (string memory){
        return  "Im in contract B";
    }
}

contract C is A,B{ 
    // override(A,B)-> give the parent name when that function defines
    function fun() public pure virtual override(A,B) returns (string memory){
        return  "Im in contract C";
    }
}

contract D is A,B,C{ 
    function fun() public pure virtual override(A,B,C) returns (string memory){
        return  "Im in contract D";
    }
}