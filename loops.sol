//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Loop{
    function fun(uint _x) public pure returns(uint) {
        uint count=0;
        for(uint i=0; i<_x; i++){
            count++;
        }
        return count;

        // same for while and do-while
    }
}