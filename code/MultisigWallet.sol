// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MultisigWallet {
    address[] public owners;
    uint256 public requiredSignatures;
    mapping(address => bool) public isOwner;
    mapping(uint256 => mapping(address => bool)) public approvals;

    struct Transaction {
        address to;
        uint256 value;
        bytes data;
        bool executed;
    }

    Transaction[] public transactions;

    modifier onlyOwner() {
        require(isOwner[msg.sender], "Not an owner");
        _;
    }

    constructor(address[] memory _owners, uint256 _requiredSignatures) {
        require(_owners.length > 0, "No owners provided");
        require(_requiredSignatures <= _owners.length, "Invalid threshold");

        for (uint256 i = 0; i < _owners.length; i++) {
            address owner = _owners[i];
            require(owner != address(0), "Invalid owner");
            require(!isOwner[owner], "Duplicate owner");
            isOwner[owner] = true;
            owners.push(owner);
        }

        requiredSignatures = _requiredSignatures;
    }

    function submitTransaction(address _to, uint256 _value, bytes memory _data) public onlyOwner {
        transactions.push(Transaction({
            to: _to,
            value: _value,
            data: _data,
            executed: false
        }));
    }

    function approveTransaction(uint256 _txId) public onlyOwner {
        require(_txId < transactions.length, "Invalid transaction ID");
        require(!transactions[_txId].executed, "Transaction already executed");
        require(!approvals[_txId][msg.sender], "Already approved");

        approvals[_txId][msg.sender] = true;
    }

    function executeTransaction(uint256 _txId) public onlyOwner {
        require(_txId < transactions.length, "Invalid transaction ID");
        require(!transactions[_txId].executed, "Transaction already executed");

        uint256 approvalCount = 0;
        for (uint256 i = 0; i < owners.length; i++) {
            if (approvals[_txId][owners[i]]) {
                approvalCount++;
            }
        }

        require(approvalCount >= requiredSignatures, "Insufficient approvals");
        Transaction storage transaction = transactions[_txId];
        transaction.executed = true;

        (bool success, ) = transaction.to.call{value: transaction.value}(transaction.data);
        require(success, "Execution failed");
    }
}