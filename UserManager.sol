// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserManager {
    // Define the User struct
    struct User {
        string name;
        uint age;
        string email;
        bool isRegistered;
    }

    // Mapping from Ethereum address to User struct
    mapping(address => User) public users;

    // Event to log when a new user is registered
    event UserRegistered(address indexed userAddress, string name, uint age, string email);

    // Function to register a new user
    function registerUser(string memory _name, uint _age, string memory _email) public {
        // Check if the user is already registered
        require(!users[msg.sender].isRegistered, "User is already registered.");

        // Register the new user
        users[msg.sender] = User({
            name: _name,
            age: _age,
            email: _email,
            isRegistered: true
        });

        // Emit the UserRegistered event
        emit UserRegistered(msg.sender, _name, _age, _email);
    }

    // Function to get user details based on their address
    function getUserDetails(address _userAddress) public view returns (string memory, uint, string memory, bool) {
        // Retrieve the user details from the mapping
        User memory user = users[_userAddress];

        // Return the user's details
        return (user.name, user.age, user.email, user.isRegistered);
    }
}
