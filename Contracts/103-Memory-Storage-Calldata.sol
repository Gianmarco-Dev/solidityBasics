// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// EVM can access and store information and data in six places:
// STACK 
// MEMORY : in memory and calldata variables will exist only temporarily
// STORAGE : Storage variable exists also outside the function that is executing them.
// CALLDATA : in memory and calldata variables will exist only temporarily
// CODE
// LOGS

contract Storage {

    // STORAGE : Storage variable like @totalCollected exists also outside the function that is executing them.
    uint256 public totalCollected;

    struct People {
        uint256 totalCollected;
        string name;
    }

    People[] public people;

    function store(uint256 _totalCollected) public {
        totalCollected = _totalCollected; // Istruzione
        totalCollected = _totalCollected + 1; // Istruzione
    }


    // VIEW & PURE
    function retrieve() public view returns (uint256) {
        return totalCollected;
    }


    // CALLDATA, MEMORY AND STORAGE
    // the name variable only exists temporarily here, during the transaction that a user is calling here.
    // Since we dont need this variable after the function is executed, we choose the keyword memory, or as calldata 
    // if we dont want to modify the variable. Memory is temporary that can be modify, storage is permanent, but can be modified.
    function addPerson(string memory _name, uint256 _totalCollected) public {
        people.push(People(_totalCollected, _name)); // array.push a new People struct.

    
    }
}
