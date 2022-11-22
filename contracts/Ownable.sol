// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Ownable {
    // State variable
    address payable owner;

    // Modifiers
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "This function can only be called by the contract owner"
        );
        _;
    }

    // constructor
    constructor() {
        owner = payable(msg.sender);
    }
}
