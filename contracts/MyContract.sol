// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

// contract MyContract { 
//     // State Variables - can be accessed in entire contract
//     uint public myUint = 1;
//     uint256 public myUint256 = 1;
//     uint8 public myUint8 = 1;
//     int public myInt = 1;

//     string public myString = "Hello, world!";
//     bytes32 public myBytes32 = "Hello, world!";

//     address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

//     // Create our own data structure
//     struct MyStruct {
//         uint256 myUint256;
//         string myString;
//     }

//     MyStruct public myStruct = MyStruct(1, "Hello, world!");

//     // Array
//     uint[] public uintArray = [1, 2, 3];

//     // 2D array
//     uint256[][] public array2D = [[1,2,3], [4,5,6]];

//     // Local Variables - can be accessed only in the scope of function
//     // pure means that this function doesn't mutate anything outside its scope
//     function getValue() public pure returns (uint) { 
//         uint value = 1;
//         return value;
//     }

//     function addValue (uint _value) public {
//         uintArray.push(_value);
//     }

//     function valueCount() public view returns (uint){
//         return uintArray.length;
//     }
// }

// contract MyContract { 
//     // Mapping
//     mapping(uint => string) names;
//     mapping(uint => Book) public books;
//     // Nested mapping 
//     mapping(address => mapping(uint => Book)) public myBooks;

//     struct Book {
//         string title;
//         string author;
//     }

//     constructor() {
//         names[1] = "Minh";
//         names[2] = "Meo";
//     } 

//     function addBook(uint _id, string memory _title, string memory _author) public {
//         books[_id] = Book(_title, _author);
//     }
    
//     function addMyBook(uint _id, string memory _title, string memory _author) public {
//         myBooks[msg.sender][_id] = Book(_title, _author);
//     }
// }

contract MyContract { 
    // Conditionals 
    // Loops

    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

    function countEvenNumbers() public view returns(uint){
        uint count = 0;

        for(uint i = 0; i < numbers.length; i++){
            count += 1;
        }
        
        return count;
    }

    function isEvenNumber(uint _num) public pure returns (bool)  {
        if(_num % 2 == 0){
            return true;
        }else{ 
            return false;
        }
    }
}