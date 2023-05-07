pragma solidity ^0.5.0;

contract Sayi {
    mapping (address => uint ) favoriSayim;

    function ayarlaSayi(uint benimSayim) public {
        favoriSayim[msg.sender] = benimSayim;
    }

    function sayimiSoyle() public view returns (uint) {
        return favoriSayim[msg.sender];
    }
}