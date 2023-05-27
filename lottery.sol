// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract lottery {
    address public manager;
    address[] public players;

    constructor() {
        manager = msg.sender;
    }

    function getBalance() public view returns (uint) {
        require(msg.sender == manager);
        return address(this).balance;
    }

    function random() public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp)));
    }

    receive() payable external {
        require(msg.value >= 0.01 ether);
        players.push(msg.sender);
    }

    function pick_Winner() public payable returns (address) {
        require(msg.sender == manager);
        uint256 r = random();
        uint256 winner_index = r % players.length;
        address payable winner = payable(players[winner_index]);
        winner.transfer(getBalance() * 10 / 100);
        return winner;
    }
}