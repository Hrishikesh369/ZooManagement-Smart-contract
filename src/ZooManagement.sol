//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

contract ZooManagement {

    uint256 public totalVisitors;

    struct Animal {
        string species;
        string name;
        uint256 age;
    }

    Animal[] public listofAnimals;
    mapping ( string => uint256 ) public nameToAge;

    function updateVisitorCount (uint256 _newVisitorCount) public {
        totalVisitors = _newVisitorCount;
    }

    function getTotalVisitors () public view returns (uint256) {
        return totalVisitors;
    }

    function addAnimal (string memory _species, string memory _name, uint256 _age) public {
        listofAnimals.push(Animal(_species, _name, _age));
        nameToAge[_name] = _age; 
    }
}