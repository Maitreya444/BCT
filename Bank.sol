
//3rd

// SPDX-License-Identifier:MET
pragma solidity ^0.8;

contract BankAccount {
    address public owner; // The owner of the bank account
    uint public balance; // The current balance in the bank account

    constructor() {
        owner = msg.sender; // The creator of the contract is set as the owner
    }

    // Modifier to ensure that only the owner can execute certain functions
    modifier onlyOwner {
        require(msg.sender == owner, "Only the owner can perform this operation");
        _;
    }

    // Function to deposit money into the bank account
    function deposit(uint amount) public onlyOwner {
        require(amount > 0, "Deposit amount must be greater than zero");
        balance += amount;
    }

    // Function to withdraw money from the bank account
    function withdraw(uint amount) public onlyOwner {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }

    // Function to check the current balance
    function getBalance() public view returns (uint) {
        return balance;
    }
}

