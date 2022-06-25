//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract Require{
    address public owner = msg.sender;
    uint public age =25;

    function Check(uint _x) public{
        age=age+5;
        require(_x>2,"input value is greater than 2");
    }

    function onlyOwner() public{
        require(owner==msg.sender,"you are not the owner of this contract");
        age=age+2;
    }
}