// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

// state variables only defined inside contract and outside of functions
// state variables directly store in blockchain (gas)
// to reflect new changes we need to redeploy
// Three way for initialized the stateVariable

contract stateVariable{
    // uint public salary=10000;
    uint public salary;

    // salary=5000; (this is not available)

    constructor(){
        salary = 10000;
    }

    function setSalary () public {
        salary=20000;
    }

}