//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract HashFunction{
    function hashkeccak256(uint _x, string memory _name, address _add) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_x,_name,_add));
    }

    function hashsha256(uint _x, string memory _name, address _add) public pure returns(bytes32){
        return sha256(abi.encodePacked(_x,_name,_add));
    }

    function hashripemd(uint _x, string memory _name, address _add) public pure returns(bytes20){
        return ripemd160(abi.encodePacked(_x,_name,_add));
    }
}