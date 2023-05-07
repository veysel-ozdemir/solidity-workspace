pragma solidity ^0.5.16;

contract Deneme {
    address public sahibi;

    constructor() public {
        sahibi = msg.sender;
    }

    modifier sadeceSahip() {
        require(msg.sender == sahibi, "Sahibi degil");
        _;
    }

    function sahipDegistir(address yeniSahip) public sadeceSahip {
        sahibi = yeniSahip;
    }
}