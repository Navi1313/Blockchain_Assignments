// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {

    address private owner;

    mapping(address => string[]) private Assets;

    constructor() ERC20("Degen", "DGN"){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(owner==msg.sender,"Only owner has access");
        _;
    }

// 1) Minting Function :
    function mintToken(address _to,uint _val) public onlyOwner{
        _mint(_to,_val);
    }


// 2) Transfer function  :
    function transferToken(address _to, uint _val) public  {

        require(balanceOf(msg.sender) >= _val , "Not enough Balance ");
        _transfer(msg.sender, _to, _val);

    }

// 3) Redeem function :
    function redeemToken(string memory _itemname) public {

        uint price = 100;
        _burn(msg.sender, price);
        Assets[msg.sender].push(_itemname);

    }


// 4) Checking token balance
    function getBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }


// 5) Burning tokens
    function burnToken(uint256 _val) public {
        require(balanceOf(msg.sender) >= _val, "Insufficient balance to burn");
        _burn(msg.sender, _val);
    }


    function Asset(address _adr) public view returns (string[] memory) {
        return Assets[_adr];
    }

}