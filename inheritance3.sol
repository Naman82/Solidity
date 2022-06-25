//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract A{
    function f1() public pure returns(string memory){
        return "hi, I'm in contract A";
    }

    function f2() public pure virtual returns(string memory){
        return "hi, I'm in contract A";
    }
}

contract B{
    function fb() public pure returns(string memory){
        return "hi, I'm in contract B";
    }
    function f2() public pure virtual returns(string memory){
        return "hi, I'm in contract B";
    }
}

contract C is A,B{
    //rightmost will be called
    function fun() public pure returns(string memory){
        return "hi, I'm in contract C";
    }
    function f2() public pure override(A,B) returns(string memory){
        return "hi, I'm in contract C";
    }

}