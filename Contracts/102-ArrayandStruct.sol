// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Storage {
    uint256 public totalCollected;

    //  create a new type in Solidity, a People object, which contains the total collected and the name of a specific collectors.

    struct People {
        uint256 totalCollected;
        string name;
    }

    //  Create a dynamic array: we take the type of the object, its visibility, and the name of the variable..
    // specify a number in parentheses for limit the size of the array to that number.

    People[] public people;

    // object People uint256 ask for index of the object

    function store(uint256 _totalCollected) public {
        totalCollected = _totalCollected; // Istruzione
        totalCollected = _totalCollected + 1; // Istruzione
    }

    function retrieve() public view returns (uint256) {
        return totalCollected;
    }

    function addPerson(string memory _name, uint256 _totalCollected) public {
        people.push(People(_totalCollected, _name)); // array.push a new People struct.

        // We can also create do smt like this
        // People memory newPerson = People({_totalCollected: _totalCollected, name: _name});
    }
}
