//SPDX-License-Identifier: MIT

pragma solidity ^0.4.0;

contract Greeter {
    //state variables to store the greeting message and a constant value
    string public yourName="Hello World 123";
    string public constant value = "myValue2";

    //Constructor not neeeded as the variables are initialized upon declaration

    //Function to set the greeting message
    function set(string name) public {
        yourName = name;
    }

    //Function to get the greeting message
    function get() public view returns (string) {
        return yourName;
    }
}