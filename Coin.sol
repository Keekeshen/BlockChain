//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Coin {
    address public minter;
    mapping(address => uint) public balances;
    event Sent(address indexed from, address indexed to, uint amount);

    constructor(){
        minter = msg.sender;
    }

    function mint(address receiver,uint amount) public {
        require(msg.sender == minter, "Only the minter can mint coins");
        require(receiver != address(0), "Invalid receiver address");
        require(amount > 0, "Amount must be greater than zero");
   
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public {
        require(receiver != address(0), "Invalid receiver address");
        require(amount > 0,"Amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;
        balances[receiver] += amount;

        emit Sent(msg.sender,receiver, amount);
    }
}
