// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract StateVariables{
    //state variable
    uint age;
    string name;
    bool isIndian;
    address ownerAdd;

    constructor(uint _age, string memory _name, bool _isIndian, address _ownerAdd){
        age=_age;
        name=_name;
        isIndian=_isIndian;
        ownerAdd=_ownerAdd;
    }

    function call() public view returns(uint,string memory,bool,address){
        return (age,name,isIndian,ownerAdd);
    }

}

contract LocalVariables{
    //local variables
    function fun(uint _x, bool _b) public pure returns(uint,bool){
        uint x = _x;
        bool b = _b;
        return(x,b);
    }
}

contract GlobalVariables{
    //global variables
    address public ownerAdd = msg.sender;
    uint public time = block.timestamp;
    uint public diff = block.difficulty;
    uint public gascost = tx.gasprice;
}