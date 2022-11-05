//SPDX-License-Identifier: MIT
pragma solidity ^0.4.11;

//Samcoins ICO
contract samcoin_ico{
    //Maximum number of samcoin available for sale
    uint public constant max_samcoins = 1000000;

    //Introducing USD to Samcoin conversion rate: 1 USD = 1000 samcoins
    uint public usd_to_samcoin = 1000;

    //Introducing total number of Samcoins that have been bought by investors
    uint public total_samcoins_bought = 0;

    //Mapping from the investor address to its equity in samcoins and USD
    mapping(address => uint) equity_samcoins;
    mapping(address => uint) equity_usd;

    //Checking if an investor can buy samcoins
    modifier can_buy_samcoins(uint usd_invested){
        require (usd_invested * usd_to_samcoin + total_samcoins_bought <= max_samcoins);
        _;
    }

    //Getting the equity in Samcoins of an investor
    function equity_in_samcoin(address investor) external constant returns (uint) {
        return equity_samcoins[investor];
    }

    //Getting the equity in USD of an investor
    function equity_in_usd(address investor) external constant returns(uint){
        return equity_usd[investor];
    }

    //Buying Samcoins
    function buy_samcoins(address investor, uint usd_invested) external can_buy_samcoins(usd_invested){
        uint samcoins_bought = usd_invested*usd_to_samcoin;     //No of coins bought by investor

        //Updating equity of investor:
        equity_samcoins[investor] += samcoins_bought;   
        equity_usd[investor] += equity_samcoins[investor]/1000;

        total_samcoins_bought += samcoins_bought;      // Total number of coins bought until now
    }

    //Selling Samcoins
    function sell_samcoins(address investor, uint samcoins_sold) external {

        //Updating equity of investor:
        equity_samcoins[investor] -= samcoins_sold;             
        equity_usd[investor] += equity_samcoins[investor]/1000;

        total_samcoins_bought -= samcoins_sold;     // Total number of coins bought until now
    }
}