// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// special type of function similar as constructor but modifier may be multiple inside one constructor
// reuse code
// to add function prerequisite


contract Modifier{


    modifier sameCode(){ // used in function signature before returns
          for(uint i = 0; i<10; i++){
            //code
        }
        _;
       //code_;

        /* 
            //after execution of modifier the function will be executed 
            //then after function executed completed than recheck below this _; if any other code remains or not 
        */
    }
    
    function fun1() public sameCode pure returns (string memory) {
     

        return  "fun1 say hi";
    
    }

    function fun2() public sameCode pure returns (uint _x){
 
        
        _x = 20; // return 20;
   
    }

    function fun3() public sameCode view returns (address){
      
    
        return msg.sender;
    }

}


contract auction{


    address public owner = msg.sender;

    modifier  onlyOwner(){
        require(owner == msg.sender,"You are not owner");

        _;
    }

    function startAuction() public view onlyOwner{
        // require(owner == msg.sender,"You are not owner");

    }

    function stopAuction() public view onlyOwner {
        // require(owner == msg.sender,"You are not owner");
    }
    
    function checkStatus() public view onlyOwner {
        // require(owner == msg.sender,"You are not owner");
    }

    //passing value in modifier
    uint age = 99;
    modifier temp(uint _x) {
        age = age + _x;
        _;
    }

    function changeAge(uint _y)public temp(_y) {
        // age = age + _y;
    }

}