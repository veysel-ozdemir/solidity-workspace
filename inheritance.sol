pragma solidity ^0.4.0;

contract Anlasma {
    uint public A = 0;

    function afonk() public returns (string memory) {
        A = 2;
        return;
    }
}

contract YeniAnlasma is Anlasma {
    function bfonk() public returns (string memory) {
        A = 3;
        return;
    }
}