// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Election {
    string public candidate;

    constructor() public {
        candidate = "Undefined";
    }
}