// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ComplaintTypes {

    enum Status {
        Submitted,
        InProgress,
        Resolved
    }

    struct Complaint {
        uint id;
        address user;
        string description;
        Status status;
        uint timestamp;
    }
}
