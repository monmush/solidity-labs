// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter { 
    uint public count = 0;

    // Read function
    function getCount () public view returns(uint) {
        return count;
    }

    // Write function
    function incrementCount() public {
        count = count + 1;
    }
} 