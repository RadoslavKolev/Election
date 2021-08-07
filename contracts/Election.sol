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
    
    // Store accounts that have voted 
    mapping(address => bool) public voters;
    
    // Store candidates count
    uint public candidatesCount;

    // Voted event
    event Voted (
        uint indexed _candidateId
    );

    constructor() public {
        addCandidate("Joe Biden");
        addCandidate("Donald Trump");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        // Require that the voter haven't voted before
        require(!voters[msg.sender]);

        // Require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // Record that voter has voted    
        voters[msg.sender] = true;

        // Update candidate vote count  
        candidates[_candidateId].votes++;

        // Trigger Voted event
        emit Voted(_candidateId);
    }
}