//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Struct{
    struct Emp{
        string name;
        uint age;
        address acc;
    }

    Emp public emp;
    function setValues() public{
        Emp memory emp1= Emp("naman",20,0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        emp=emp1;
    }

    Emp[] public emps;
    function setValuesEmps() public {
        Emp memory emp2 = Emp({
            name:"naman2",
            age:23,
            acc:0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        });

        Emp memory emp3;
        emp3.name = "Naman3";
        emp3.age = 25;
        emp3.acc = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

        emps.push(emp2);
        emps.push(emp3);
    }
}