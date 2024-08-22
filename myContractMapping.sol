//SPDX-License_Identifier: MIT
pragma solidity ^0.8.0;

contract myContractStruct{

struct Person {
    uint id;
    string _firstName;
    string _lastName;
}

mapping (uint => Person)public people;
uint256 public peopleCount;

function addPerson(string memory _firstName, string memory _lastName) public {
    people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    peopleCount++;
}
}