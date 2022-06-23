//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Enum{
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancel
    }

    Status status;

    function getStatus() public view returns(Status){
        return status;
    }

    function setStatusToAccepted() public {
        status= Status.Accepted;
    }

    function Reset() public {
        delete status;
    }
}