//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract Modifier{
    modifier sameCode(){
        for(uint i=0; i<10; i++){

        }
        _;
    }

    function fun1() public pure sameCode returns(string memory){
        return "fun1 say hi";
    }
    
    uint public age = 30;
    modifier temp(uint _x){
        age=age+_x;
        _;
    }

    function fun2(uint _x) public temp(_x){

    }
}