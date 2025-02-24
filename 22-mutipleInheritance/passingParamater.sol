// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// passing parameter -> static (fixed), dynamic and mixed
// Order of inheritance means order of execution (left to right)
// when constructor copy the properties (right to left)

contract A{

    string public name;
    uint public age;

    constructor(string memory _name, uint _age){
        name = _name;
        age= _age;
    }
}


contract B{

    string public add;
    uint public salary;

    constructor(string memory _add, uint _salary){
        add = _add;
        salary = _salary;
    }
}

// Fixed methods
// Order of execution- > call to the A, B and C
contract C is A("suraj",99),B("Nepal",0){
}


// Fixed methods
// Order of execution- > call to the B, A and D
contract D is B,A{
    constructor() B("Nepal",0)A("suraj",99){}
}


// Dynamic Methods
// Order of execution- > call to the A, B and E
contract E is A,B{
    string public a;
    constructor(string memory _name,uint _age,string memory _add, uint _salary, string memory _a) A(_name, _age+2) B(_add,_salary){
       a = _a;
    }
}


// Mixed Methods
contract F is A("suraj",99),B{
    constructor(string memory _name,uint _age,string memory _add, uint _salary) B(_add,_salary){
        
    }
}