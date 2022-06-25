//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract Revert{
    uint public age=25;

    function Check(uint _x) public {
        if(_x>2){
            revert("x is greater than 2");
        }
        age=age+5;
    }
}

contract Revert2{
    address public owner = msg.sender;

    error throwError(string);

    function onlyOwner() public view{
        if(owner!=msg.sender){
            revert throwError("you are not owner of this contract");
        }
    }

    function Check() public view{
        assert(owner == msg.sender);
    }
}