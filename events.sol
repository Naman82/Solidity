//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract Event{
    event log(uint id, string name);

    function set(uint _x, string memory _name) public{
        emit log(_x,_name);
    }
}