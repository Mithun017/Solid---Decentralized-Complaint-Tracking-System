// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Ownership.sol";
import "./ComplaintStorage.sol";

contract ComplaintSystem is Ownership, ComplaintStorage {

    // Submit a new complaint
    function submitComplaint(string memory _description) public {
        _addComplaint(msg.sender, _description);
    }

    // Authority updates complaint status
    function updateComplaintStatus(uint _id, Status _status)
        public
        onlyOwner
    {
        _updateStatus(_id, _status);
    }

    // View complaint details
    function getComplaint(uint _id)
        public
        view
        returns (
            uint,
            address,
            string memory,
            Status,
            uint
        )
    {
        Complaint memory c = _getComplaint(_id);
        return (
            c.id,
            c.user,
            c.description,
            c.status,
            c.timestamp
        );
    }
}
