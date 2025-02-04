// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Enum - user defined datatype


contract Enum{
    enum Status {Pending, Shipped, Accepted, Rejected, Cancled}

    Status status; // default first value is assigned


    function getStatus () public view returns (Status){
        return  status;
    }


    function setStatus(Status _status) public {
        status = _status;
    }

    function rej() public {
        status = Status.Rejected;
    }

    function reset() public {
        delete status; // assgined second value
    }

}