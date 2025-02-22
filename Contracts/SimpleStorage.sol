//SPDX-License-Identifier: MIT
pragma solidity 0.8.8;  //

contract SimpleStorage {
    //Solidity types: boolean, unit(unsided integer only positive), int, address, bytes
    //bool hasFavoriteNumber = true;
    //string favoriteNumberInText = "Five";
    //int256 favoriteInt = -5;
    //address myAddress = 0x1Fd8fCf677c213C2a0Ef154a08ECcB4830226aC5;
    //bytes32 favoriteByters = "cat";

    //this gets initialized to zero
    uint256 favoriteNumber;
    //People public person = People({favoriteNumber: 2, name: "Brian"});

    //array way to store list
    //mapping - dictionary 

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //uint256[] public favoriteNumbersList;
    People[] public people;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
       
    }
    //bire, pure functions disallow any modifications of state (dont charge gas, doesnt make a transaction)
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    
}// 0xd9145CCE52D386f254917e481eB44e9943F39138

//contract address 0x732Fa77fEAfBe019e088dB8005fF49b8c7070685