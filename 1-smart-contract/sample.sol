// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;



contract ownable{
    address public owner;


    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "not owner");
    _;
    }


    function setOwner(address _newOwner) public onlyOwner{
        require(_newOwner != address(0), "invalid address");

        owner = _newOwner;
    }

    function onlyOwerCanAcess()public  onlyOwner{
        // code
    }

function anyOneCanAccess()public {
    //code
}

}