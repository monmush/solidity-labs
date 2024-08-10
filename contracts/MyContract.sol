// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract MyContract { 
    // State Variables - can be accessed in entire contract
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    int public myInt = 1;

    string public myString = "Hello, world!";
    bytes32 public myBytes32 = "Hello, world!";

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Create our own data structure
    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, world!");

    // Array
    uint[] public uintArray = [1, 2, 3];

    // 2D array
    uint256[][] public array2D = [[1,2,3], [4,5,6]];

    // Local Variables - can be accessed only in the scope of function
    // pure means that this function doesn't mutate anything outside its scope
    function getValue() public pure returns (uint) { 
        uint value = 1;
        return value;
    }

    function addValue (uint _value) public {
        uintArray.push(_value);
    }

    function valueCount() public view returns (uint){
        return uintArray.length;
    }
}