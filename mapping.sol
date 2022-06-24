//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Mapping{
    mapping(uint=>string) emp_id;
    function setId() public {
        emp_id[31] = "naman";
        emp_id[12] = "aryan";
        emp_id[56] = "subham";
        emp_id[59] = "swagat";
    }

    function getById(uint _x) public view returns (string memory){
        return emp_id[_x];
    }


}