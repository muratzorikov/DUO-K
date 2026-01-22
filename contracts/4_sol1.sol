// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerGuard {
    address public owner;
    string public message;

    constructor(string memory _startMessage) {
        owner = msg.sender;
        message = _startMessage;
    }

    // Only the owner can call this function
    function updateMessage(string memory _newMessage) public {
        require(msg.sender == owner, "You are not the owner!");
        message = _newMessage;
    }
}