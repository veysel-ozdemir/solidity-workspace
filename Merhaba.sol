pragma solidity ^0.4.0;

contract Merhaba {
    string public selamlama = 'Merhaba Dunyali';
    function yeniSelam (string yeniSelamMesji) public {
        selamlama = yeniSelamMesji;
    }
}