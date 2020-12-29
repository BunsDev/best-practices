# Unsafe Ownership Transition
## function: transferOwnership
### Description
The Owned contract is used for ownership management in a contract. When the contract owner needs to transfer the ownership to another address, she could invoke the
transferOwnership() function with a newOwner address. However, if the newOwner isn't the exact address (e.g. typo), the contract would be ownerless.
### Recommendation
Implement a two-step ownership transfer mechanism that enables the new owner to claim the ownership by signing a transaction.
