// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;


// virtual -> allow to edit
// override -> editable virtual function

contract A {
    uint public x =100;
    address public owner =msg.sender; 


    function fun1() public pure  returns (string memory){
        return  "im in contract A";
    }

     function fun2() public pure  returns (string memory){
        return  "im in contract A";
    }

     function fun3() public pure virtual returns (string memory){
        return  "im in contract A";
    }

     function fun4() public pure virtual returns (string memory){
        return  "im in contract A";
    }
}

contract B is A{

    function fun3() public  pure override returns (string memory){
        return  "im in contract b";

    }

     function fun4() public pure virtual override returns (string memory){
        return  "im in contract B";
    }

}

contract C is B{

    function fun4() public pure override  returns (string memory){
        return  "im in contract C";
    }
}