// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

//Works in function label
//Number of loop cost number of gas 

contract loops{

    function loop() public pure returns (uint) {
        uint count = 0;

        // for (uint i = 0; i < 10; i++){
        //     count = count + 5;
        // }

        // uint j=0;
        // while (j <10 ){
        //     count = count +5;
        //     j++;
        // }

        uint k=0;
        do {
            count = count +5;
            k++;
        }while (k <10);


        return count;

    }

}