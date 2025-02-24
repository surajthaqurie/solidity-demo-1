// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// types: direct calling and calling using keyword super
    //1. direct calling - specific call that function
    //2. super -> when property find calls than finished (drived first (right to left))


contract A{
    event log(string name,uint age);

    function fun1() public  virtual {
        emit log("A contract fun1", 99);

    }


    function fun2() public virtual {
        emit log("A contract fun2", 99);

    }
}

contract B is A{
    function fun1() public virtual  override  {
        emit log("B contract fun1", 99);

        A.fun1(); //direct calling

    }


    function fun2() public virtual override {
        emit log("B contract fun2", 99);
       
        super.fun2(); //super
    }
}

/* logs - [
	{
		"from": "0xDA07165D4f7c84EEEfa7a4Ff439e039B7925d3dF",
		"topic": "0xb60e72ccf6d57ab53eb84d7e94a9545806ed7f93c4d5673f11a64f03471e584e",
		"event": "log",
		"args": {
			"0": "B contract fun1",
			"1": "99",
			"name": "B contract fun1",
			"age": "99"
		}
	},
	{
		"from": "0xDA07165D4f7c84EEEfa7a4Ff439e039B7925d3dF",
		"topic": "0xb60e72ccf6d57ab53eb84d7e94a9545806ed7f93c4d5673f11a64f03471e584e",
		"event": "log",
		"args": {
			"0": "A contract fun1",
			"1": "99",
			"name": "A contract fun1",
			"age": "99"
		}
	}
] */

contract C is A{
    function fun1() public virtual  override  {
        emit log("C contract fun1", 99);

    }


    function fun2() public virtual override {
        emit log("C contract fun2", 99);

    }
}

contract D is B,C{
   
    function fun1() public  override(B,C)  {
        emit log("D contract fun1", 99);

        B.fun1(); //direct calling


/*logs - [
	{
		"from": "0x9ecEA68DE55F316B702f27eE389D10C2EE0dde84",
		"topic": "0xb60e72ccf6d57ab53eb84d7e94a9545806ed7f93c4d5673f11a64f03471e584e",
		"event": "log",
		"args": {
			"0": "D contract fun1",
			"1": "99",
			"name": "D contract fun1",
			"age": "99"
		}
	},
	{
		"from": "0x9ecEA68DE55F316B702f27eE389D10C2EE0dde84",
		"topic": "0xb60e72ccf6d57ab53eb84d7e94a9545806ed7f93c4d5673f11a64f03471e584e",
		"event": "log",
		"args": {
			"0": "B contract fun1",
			"1": "99",
			"name": "B contract fun1",
			"age": "99"
		}
	},
	{
		"from": "0x9ecEA68DE55F316B702f27eE389D10C2EE0dde84",
		"topic": "0xb60e72ccf6d57ab53eb84d7e94a9545806ed7f93c4d5673f11a64f03471e584e",
		"event": "log",
		"args": {
			"0": "A contract fun1",
			"1": "99",
			"name": "A contract fun1",
			"age": "99"
		}
	}
] */

    }


    function fun2() public override(B,C) {
        emit log("D contract fun2", 99);

        super.fun2(); //super

    }

/* logs - [
	{
		"from": "0x9ecEA68DE55F316B702f27eE389D10C2EE0dde84",
		"topic": "0xb60e72ccf6d57ab53eb84d7e94a9545806ed7f93c4d5673f11a64f03471e584e",
		"event": "log",
		"args": {
			"0": "D contract fun2",
			"1": "99",
			"name": "D contract fun2",
			"age": "99"
		}
	},
	{
		"from": "0x9ecEA68DE55F316B702f27eE389D10C2EE0dde84",
		"topic": "0xb60e72ccf6d57ab53eb84d7e94a9545806ed7f93c4d5673f11a64f03471e584e",
		"event": "log",
		"args": {
			"0": "C contract fun2",
			"1": "99",
			"name": "C contract fun2",
			"age": "99"
		}
	}
    ]
*/
}