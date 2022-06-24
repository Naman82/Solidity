//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract A{
    function fun() public pure returns(string memory){
        return "hi, I'm in contract A";
    }
    function func() public virtual pure returns(string memory){
        return "hi I'm in contract A";
    }
}

contract B is A{
    function func() public override pure returns(string memory){
        return "hi I'm in contract B";
    }
}