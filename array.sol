//SPDX-License-Identifier: MIT
pragma solidity^0.8;

contract Array{
    uint[5] public arr;
    function setArray(uint _x) public {
        for(uint i=0; i<5; i++){
            arr[i]=i+_x;
        }
    }

    function clearArray() public {
        delete arr;
    }

    function updateArray(uint _x, uint _val) public {
        arr[_x]=_val;
    }

}

contract FixedArray{
    function createArrayAndDisplay(uint _x) public pure returns(uint) {
        uint[] memory arr = new uint[](4);
        for(uint i=0; i<4; i++){
            arr[i]=i;
        }
        return arr[_x];
    }

}