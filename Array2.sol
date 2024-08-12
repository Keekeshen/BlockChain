//SPDX-License-Identifier: MIT
pragma solidity ^0.6.10;

contract Array {

    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    //uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory, uint[] memory) {
        return (arr, arr2);
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint, uint) {
        return (arr.length, arr2.length);
    }

    function remove(uint index) public {
        delete arr[index];
    }
}