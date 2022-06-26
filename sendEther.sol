//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

//send
//transfer
//call

contract sendEth{

    address payable public getter;
    constructor(address _x){
        getter = payable(_x);
    }
    receive() external payable{}

    function checkBal() public view returns(uint){
        return address(this).balance;
    }
    
    function SEND() public{
        bool sent = getter.send(1000000000000000000);
        require(sent,"Transaction is failed");
    }
}

contract transferEth{

    address payable public getter;
    constructor(address _x){
        getter = payable(_x);
    }

    receive() external payable{}

    function checkBal() public view returns(uint){
        return address(this).balance;
    }

    function TRANSFER() public{
        getter.transfer(1000000000000000000);
    }
}

contract Call{

    address payable public getter;
    constructor(address _x){
        getter=payable(_x);
    }

    receive() external payable{}

    function checkBal() public view returns(uint){
        return address(this).balance;
    }

    function CALL() public{
        (bool sent, bytes memory data)=getter.call{value:10000000000000000, gas:23000}("");
        require(sent,"");
    }
}