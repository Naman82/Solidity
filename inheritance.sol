//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract A{
    function fun() public pure returns(string memory){
        return "hi, I'm in Contract A";
    }

    function fun2() public pure returns(string memory){
        return "hi , I'm in contract A";
    }
}

contract B is A{
    
}