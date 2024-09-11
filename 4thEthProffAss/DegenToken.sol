// SPDX-License-Identifier: MIT
pragma solidity >0.8.9;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";



contract DegenToken is ERC20 {
    address private owner;
    string[6] private Cars = ["Henessy", "BMW", "Aston Martin", "V8", "Buggati Vyron", "Camero"];
    uint256[6] private prices = [10000, 5000, 2000, 1000, 7000, 6000];
    mapping(address => string[]) private OwnedCars;

    // Event emitted when an item is redeemed
    event ItemRedeemed(address indexed user, string itemName, uint256 price);


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
        return this.balanceOf(_addr);
    }

    function redeem(uint _item) public {
        require(_item - 1 < Cars.length && _item - 1 >= 0, "Item index out of bounds");

        uint price = prices[_item - 1];
        require(balanceOf(msg.sender) >= price, "Not sufficient amount to do a transaction");

        _burn(msg.sender, price);
        OwnedCars[msg.sender].push(Cars[_item - 1]);

        // Emit event to log the redemption
        emit ItemRedeemed(msg.sender, Cars[_item - 1], price);
    }

    function getOwnedCars(address _owner) public view returns (string[] memory) {
        return OwnedCars[_owner];
    }

    function transferTokens(address _to, uint256 _val) external  {
       require(balanceOf(msg.sender) >= _val ,"You are not having enough Tokens");
       approve(msg.sender, _val);
       transferFrom(msg.sender, _to, _val);
    }
}


