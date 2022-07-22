//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../Oracle/AggregatorV3Interface.sol";

contract OracleBasic{
    AggregatorV3Interface internal Contract;

    constructor(address _Contract){
        Contract = AggregatorV3Interface(_Contract);
    }

    function getDecimal()private view returns(uint8){
        return Contract.decimals();
    }

    function getPrice()public view returns(int256){
        ( ,int256 Price, , , )= Contract.latestRoundData();
        return Price;
    }
}