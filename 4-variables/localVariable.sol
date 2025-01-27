// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

// localvaraible are declare inside the function
// store in memory stack (ram)
// parameter of the function are also local varaibles


contract localVariable{
    uint public age;
    bool public b;
    address public newAddr;

    function func(uint _x,bool _y,address _z) public returns (uint,bool) {
        uint i=29;
        bool b1= true;

        i+=29;
        b1 = false;
        
        age =_x;
        b=_y;
        newAddr =_z;

        return (i,b1);

    }

}