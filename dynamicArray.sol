//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract dynamicArray{
    uint[] arr =[1,2,3,4,5,6,7];
    function value(uint _x) public view returns(uint){
        return arr[_x];
    }
    function clearAtPosition(uint _x) public {
        delete arr[_x];
    }
    function addItem(uint _x) public {
        arr.push(_x);
    }
    function delLastItem() public {
        arr.pop();
    }

    function updateItem(uint _x, uint _val) public {
        arr[_x]=_val;
    }
}