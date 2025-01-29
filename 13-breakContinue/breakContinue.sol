// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

// continue - skip
// break - return

contract breakContinue{

    function loop() public pure returns (uint) {
        uint count = 0;

      for(uint i=0; i<10;i=i+2){
        if(i==8){
            continue; 
        }

        count = count +5;
      }
        return count;

    }

}