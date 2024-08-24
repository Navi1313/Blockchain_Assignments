// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address private owner;
    string[6] private Bikes = ["Ducati", "Yamaha", "honda", "R15", "Harley Davidson", "Royal Enfield"];
    uint256[6] private prices = [10000, 5000, 2000, 1000, 7000, 6000];
    mapping(address => string[]) private OwnedBikes;

    constructor() ERC20("Degen", "DGN") {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner == msg.sender, "Only owner has access");
        _;
    }

    function mint(address _to, uint _val) public onlyOwner {
        _mint(_to, _val);
    }

    function burn(uint _val) public {
        _burn(msg.sender, _val);
    }

    function getBalance(address _addr) external view returns (uint) {
        return balanceOf(_addr);
    }

    function redeem(uint _item) public {
        require(_item - 1 < Bikes.length && _item - 1 >= 0, "Item index out of bounds");

        uint price = prices[_item - 1];
        require(balanceOf(msg.sender) >= price, "Not sufficient amount to do a transaction");

        _burn(msg.sender, price);
        OwnedBikes[msg.sender].push(Bikes[_item - 1]);

        console.log("You redeemed Tokens for the Bike: ", Bikes[_item - 1]);
    }

    function getOwnedBikes(address _owner) public view returns (string[] memory) {
        return OwnedBikes[_owner];
    }

    function transferTo(address _to, uint _val) public {
        _transfer(msg.sender, _to, _val);
    }
}


