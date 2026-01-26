// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ComplaintTypes.sol";

contract ComplaintStorage is ComplaintTypes {

    uint public complaintCount;
    mapping(uint => Complaint) internal complaints;

    function _addComplaint(
        address _user,
        string memory _description
    ) internal {
        complaintCount++;

        complaints[complaintCount] = Complaint(
            complaintCount,
            _user,
            _description,
            Status.Submitted,
            block.timestamp
        );
    }

    function _updateStatus(
        uint _id,
        Status _status
    ) internal {
        complaints[_id].status = _status;
    }

    function _getComplaint(uint _id)
        internal
        view
        returns (Complaint memory)
    {
        return complaints[_id];
    }
}
