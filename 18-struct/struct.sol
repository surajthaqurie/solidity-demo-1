// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Reference type- store the address (where data store)
// Inside the function memory keyword is used.


struct Emp2 {
    string name;
    uint age;
    address acc;
}
    
contract Struct{

    struct Emp {
        string name;
        uint age;
        address acc;
    }
  
    Emp public emp;
    Emp2[] public emps;

    constructor(string memory _name, uint _age, address _acc){
        emp.name =_name;
        emp.age = _age;
        emp.acc = _acc;
    }


    function setValue()public{
        Emp memory emp1 = Emp("suraj1",99,msg.sender); // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        emp = emp1;

        Emp2 memory emp2 = Emp2({name:"suraj2",age:99,acc:msg.sender});

        // This is not used contract(state) level
        Emp2 memory emp3;
        emp3.name = "suraj3";
        emp3.age = 99;
        emp3.acc = msg.sender;

        // push in array
        emps.push(emp2);
        emps.push(emp3);

        emps.push(Emp2("suraj4",99,msg.sender));


        // Emp memory emp_temp = emp;
        Emp storage emp_temp1 = emp;  // storage - directly point main address
        emp_temp1.name = "suraj5";
        emp.name = "suraj5";

        Emp2 storage emp_temp2 = emps[1];
        emp_temp2.age=101;
        delete  emp_temp2.acc;

        delete emps[2];

    }
}

contract Struct2{
    Emp2 public  emp_struct2 = Emp2("suraj7",99,msg.sender);
}