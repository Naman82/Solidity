//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract dynamicBytes{
    bytes public temp;

    constructor(){
        temp="naman2002";
    }

    function addItem() public {
        temp.push("n");
    }

    function getLength() public view returns(uint){
        return temp.length;
    }
    
    function getByPosition(uint _x) public view returns(bytes1){
        return temp[_x];
    }

    function lastRemove() public{
        temp.pop();
    }
}