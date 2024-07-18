// SPDX-License-Identifier: MIT

pragma solidity ^0.4.0;

contract Greeter{
    //State variable to store the greeting message
    string public yourName;

    //Constructor to initialize the greeting message
    constructor() public {
        yourName = "Hello world 123";
    }

    //Function to set the greeting message
    function set(string name) public {
        yourName = name;
    }

    //Function to get the greeting message
    function get() constant public returns (string) {
        return yourName;
    }
}