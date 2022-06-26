//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract Fallback{
    fallback() external payable{

    }

}

contract Receive{
    receive() external payable{

    }
}

contract Fallback_Receive{
    fallback() external payable{

    }

    receive() external payable{

    }

    // if we send only ether then it will go to receive
    // if we send ether and data then it will go to fallback
}