pragma solidity ^0.4.0;

contract Degerleme {
    int deger = 0;
    
    function degerArtir (int sayi) public {
        deger = deger + sayi;
    }

    function degerAzalt (int sayi) public {
        deger = deger - sayi;
    }

    function degerGoster () public view returns (int) {
        return deger ;  
    }
}