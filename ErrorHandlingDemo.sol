Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingDemo {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
    }

    // Function to demonstrate the use of require()
    function deposit(uint256 amount) public payable {
        require(msg.value == amount, "The amount sent does not match the specified value");
        balance += amount;
    }

    // Function to demonstrate the use of assert()
    function transferOwnership(address newOwner) public {
        assert(newOwner != address(0));
        require(msg.sender == owner, "Only the owner can transfer ownership");
        owner = newOwner;
    }

    // Function to demonstrate the use of revert()
    function withdraw(uint256 amount) public {
        if (amount > balance) {
            revert("Insufficient balance for withdrawal");
        }
        balance -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Helper function to get the contract balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

