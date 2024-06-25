# ErrorHandlingDemo Contract
## Overview
The ErrorHandlingDemo contract is a simple Solidity smart contract designed to demonstrate the use of different error handling mechanisms in Solidity: require(), assert(), and revert(). The contract includes functionality for depositing Ether, transferring ownership, and withdrawing Ether with appropriate error checks.

### Contract Details
State Variables  Owner: Stores the address of the contract owner. Balance: Stores the balance of the contract in Ether.
#### Deploying the Contract
In Remix IDE, navigate to the "Deploy & Run Transactions" tab.
Select the appropriate environment (e.g., JavaScript VM, Injected Web3 for MetaMask, or a local Ganache instance).
Deploy the ErrorHandlingDemo contract.
Once deployed, the contract address will appear under "Deployed Contracts".
##### Usage
Deploy the Contract: Deploy the contract using Remix IDE or your preferred development environment.
Deposit Ether: Use the deposit function to send Ether to the contract. Ensure that the msg.value matches the amount parameter.
Transfer Ownership: The current owner can transfer ownership to a new address using the transferOwnership function.
Withdraw Ether: Use the withdraw function to withdraw Ether from the contract. Ensure that the requested amount does not exceed the contract's balance.
Check Balance: Use the getBalance function to view the contract's current Ether balance.
###### Authors
Yashvi
