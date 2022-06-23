//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ifElse{
    function fun(uint _x) public pure returns(string memory){
        string memory val;
        if(_x<100){
            val="X is less than 100";
        }
        else if(_x>100){
            val="X is greater than 100";
        }
        else{
            val="X is equal to 100";
        }
        return val;
    }
}

contract Ternary{
    function fun(uint _x) public pure returns(string memory) {
        string memory val;
        val= _x>100 ? "X is greater than 100" : (_x<100 ? "X is less than 100" : "X is equal to 100");
        return val;
    }
}