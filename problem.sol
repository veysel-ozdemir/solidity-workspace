pragma solidity ^0.5.16;

contract Lottery {
    uint totalMoney = 0; // total money of expenditures
    address mainAcount; // account of thev company
    Customer[] customers; // all customers

    struct Customer { // customer to be joined
        uint spent; // the amount of expenditure
        address account; // the account
    }

    function buy(uint price) public {
        require(price > 0, "For joining the lottery, expenditure is mandatory.");
        Customer memory person = Customer(price, msg.sender);
        customers.push(person);
        totalMoney += price;
    }

    modifier checkTime() {
        require(now > 1685286000, "The specified time hasn't yet passed"); // the time to be passed --> 28 May 2023 | 18:00:00
        _;
    }

    function makeTheDraw() public checkTime {
        uint award = (totalMoney/100)*10; // %10 of total expenditure
    }
}