pragma solidity ^0.5.0;

contract SayiBelirle {
    uint public sayi = 300;

    function saatKac() public view returns (uint) {
        return now;
    }

    function calis() public {
        require(now > 1683628559, "Belirlenen zaman henüz gecilmedi");
        //require(sayi == 100);
        sayi = 500;
    }

    function ayarla200() public {
        sayi = 200;
    }

    function ayarla100() public {
        sayi = 100;
    }
}