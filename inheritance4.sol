//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract A{
    string public name;
    uint public age;
    constructor(string memory _name, uint _age){
        name=_name;
        age=_age;
    }
}

contract B{
    string public add;
    uint public salary;
    constructor(string memory _add, uint _salary){
        add=_add;
        salary=_salary;
    }
}

contract C is A("naman",21), B("karnal",140000000){

}

contract D is A,B{
    constructor() A("aryan", 23) B("bihar",100000){

    }
}

contract E is A,B{
    constructor(string memory _name, uint _age, string memory _add, uint _salary) A(_name,_age) B(_add, _salary){

    }
}