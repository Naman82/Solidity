//SPDX-License-Identifier:MIT

pragma solidity ^0.8;

//constant value
//dynamically allowed

contract Immutable{
    address public immutable owner;
    constructor(address _owner){
        owner=_owner;
    }
}