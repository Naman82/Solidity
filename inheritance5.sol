//SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract A{
    event log(string location, uint number);

    function fun() public virtual{
        emit log("A.fun",10);
    }

    function fun2() public virtual{
        emit log("A.fun2", 20);
    }
}

contract B is A{
    function fun() public virtual override{
        emit log("B.fun",10);
    }

    function fun2() public virtual override{
        emit log("B.fun2", 20);
    }
}

contract C is A{
    function fun() public virtual override{
        emit log("C.fun",10);
    }

    function fun2() public virtual override{
        emit log("C.fun2", 20);
    }
}

contract D is B,C{
    function fun() public override(B,C){
        emit log("D.fun",30);
        B.fun();
    }

    function fun2() public override(B,C){
        emit log("D.fun2",40);
        super.fun2();
    }
}