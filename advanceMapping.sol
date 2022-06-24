//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract advanceMapping{

    struct emp{
        string name;
        uint age;
        string id;
    }


    mapping(address => emp ) emp_info;

    function set(string memory _name, uint _age, string memory _id) public {
        emp_info[msg.sender] = emp(_name,_age,_id);
    }

    function get(address _x) public view returns( emp memory){
        return emp_info[_x];
    }

    function deleteByAddress(address _x) public {
        delete emp_info[_x];
    }

}
