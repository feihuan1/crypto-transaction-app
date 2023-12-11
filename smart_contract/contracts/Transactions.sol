//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
// uint is type of number 'unasigned interger(above 0)',is a specific type of unsigned integer with a width of 256 bits. It's commonly used in Solidity for variables that need to store large non-negative integers
// type property
    uint256 transactionCount;

// event is similar as function
//type property
// address is a special data type used to store Ethereum addresses. 
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

// struct is similar as object
    struct TransferStruct {
//  type property
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
        //  no ; at end
    }

//means transaction is and array of TransferStruct struct(object)
    TransferStruct[] transactions;

// need declare visibility public, means everyone can access to this function
// payable address is a type
// memory means that string is stored in memory of that transaction
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        // doesnt return anything, doing some actions it's the main part of this contract
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);

    }

// specify it returns an array, get from memory
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }

}