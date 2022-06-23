//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Bytes{
    bytes5 public temp;

    constructor(){
        temp="12abh";
    }

    function getValue(uint _x) public view returns(bytes1){
        return temp[_x];
    }

    function getLength() public view returns(uint){
        return temp.length;
    }
}