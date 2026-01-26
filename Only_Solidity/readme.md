# Decentralized Complaint Tracking System

---

##Project Overview

This project implements a **decentralized complaint tracking system** using Ethereum smart contracts written in Solidity. It addresses real-world issues such as lack of transparency, data tampering, and manual handling in traditional complaint systems by storing complaints **immutably on the blockchain**.

Once deployed, complaints cannot be altered or deleted. Any user can verify complaint details, while only an authorized authority can update the complaint status.

---

##Smart Contract Architecture

The project follows a **modular and professional smart contract structure**:

* **Ownership.sol** → Manages admin (authority) access
* **ComplaintTypes.sol** → Defines complaint structure and status enum
* **ComplaintStorage.sol** → Handles blockchain storage logic
* **ComplaintSystem.sol** → Main contract (this is the ONLY contract to deploy)

---

## Roles

### User

* Submits a complaint
* Views complaint details

### Authority (Owner)

* Updates complaint status

---

## How to Use the Contract (Input & Output Guide)

###Submit a Complaint

**Function:** `submitComplaint(string _description)`
**Input:**

```
Street light not working near my house
```

**Result:**

* Complaint stored on blockchain
* Complaint ID auto-generated

---

###View Complaint Details

**Function:** `getComplaint(uint256 id)`
**Input:**

```
1
```

**Output:**

```
Complaint ID
User Address
Complaint Description
Status Code
Timestamp
```

**Status Codes:**

```
0 → Submitted
1 → InProgress
2 → Resolved
```

---

### Update Complaint Status (Authority Only)

**Function:** `updateComplaintStatus(uint256 id, uint8 status)`
**Input Example:**

```
id     = 1
status = 2
```

**Result:**

* Complaint status updated on blockchain

---

## Security & Design Notes

* Only the contract owner can update complaint status
* Complaints are immutable once submitted
* All complaint data is publicly verifiable
* Role-based access enforced using modifiers

---

## Future Enhancements

* Event logging for real-time updates
* Support for multiple authorities
* Frontend integration (React + Web3)
* IPFS-based complaint attachments
* Advanced role-based access control

---
