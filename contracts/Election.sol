// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Election {
    // Model a candidate
    struct Candidate {
        uint id;
        string name;
        uint votes;
    }

    // Store and fetch candidates
    mapping(uint => Candidate) public candidates;

    // Store candidates count
    uint public candidatesCount;

    constructor() public {
        addCandidate("Joe Biden");
        addCandidate("Donald Trump");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    
}