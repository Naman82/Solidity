//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract Payable{
    function getETH() payable public {

    }

    function checkBal() public view returns(uint){
        return address(this).balance;
    }
}