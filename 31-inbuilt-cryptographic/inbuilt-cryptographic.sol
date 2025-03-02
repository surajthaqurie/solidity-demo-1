// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// Hash function
    // Keccak256- input bytes - returns hash 32bytes
    // sha256 - input bytes - returns hash 32bytes
    // ripemd160 - input bytes - returns hash 20bytes
// contract signature
// unique id create
// ....

// To convert data to bytes
    //1. abi.encode: 
    //2. abi. encodePacked: compressed

contract hashFun{

    function hash1Keccak256(uint _x, string memory _name, address _add) public pure returns (bytes32){
        return keccak256(abi.encode(_x,_name,_add));
        //0:bytes32: 0x4e780b496e2ff48dbdd616b3c77981ca40b5970b9d9a43f70339b842665959fe
    }

      function hash2Keccak256(uint _x, string memory _name, address _add) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_x,_name,_add));
        //0:bytes32: 0x0240edddd1a9bb247c082de623a3d550a494c313cedf14fd833eca8762db1df5
    }


    function hashsha256(uint _x, string memory _name, address _add) public pure returns (bytes32){
        return sha256(abi.encodePacked(_x,_name,_add));     

    }
    
    function hashRipemd160(uint _x, string memory _name, address _add) public pure returns (bytes20){
        return ripemd160(abi.encodePacked(_x,_name,_add));       
    }
}