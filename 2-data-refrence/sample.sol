// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


// Data Types - Value and Reference 
// public give button on deployment
// no null in solidity

contract valuesTypes{
    bool public boolTemp = true;

    uint public temp = 243;

    int public temp2 = 143;

    address public addr =0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //20bits hexdec - account

    bytes32 public b32; //string

}