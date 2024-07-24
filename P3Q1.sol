//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract P3Q1 {
    
    uint256 storeData;


    function set(uint256 _value) public {
        storeData = _value;
    }

    //Function to get the greeting message
    function get() public view returns (uint256) {
        return storeData;
    }

    function Increment () public {
        storeData += 200;
    }

    function Decrement () public {
        storeData -= 200;
    }
}