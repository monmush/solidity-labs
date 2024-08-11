// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyHotel { 
    // Define price to book a room
    // Define a room status: Available, Reserved
    // Create a function to book a room. Check room status, check ether balance, transfer the ether, update room status
    enum RoomStatus { 
        Available, 
        Reserved
    }
    
    RoomStatus roomStatus;
    address payable public owner;

    event Occupy(address _occupant, uint _value);

    constructor(){
        roomStatus = RoomStatus.Available;
        owner = payable(msg.sender);
    }


    modifier checkBalance { 
        require(owner.balance >= 2 ether, "Insufficient balance. Required at least 2 ether!");
        _;
    }

    modifier  checkRoomStatus { 
        require(roomStatus == RoomStatus.Available);
        _;
    }

    function book() public payable checkBalance checkRoomStatus {
        roomStatus = RoomStatus.Reserved;
        owner.transfer(msg.value);

        emit Occupy(msg.sender, msg.value);
    }
}