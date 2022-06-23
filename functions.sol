// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Function{
    uint public age;

    constructor(uint _age){
        age=_age;
    }

    function add(uint _x) public view returns(uint){
        return age+_x;
    }

    function add2(uint _x) public{
        age=age+_x;
    }

    function add3(uint _x, uint _y) public pure returns(uint){
        return _x+_y;
    }
}

