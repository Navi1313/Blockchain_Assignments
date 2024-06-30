# Project: Degen Token (ERC-20): Unlocking the Future of Gaming

This Solidity program is a simple "Minting and Burning Token AND Redeeming function with 2 more" program that demonstrates the basic syntax and functionality of the Solidity 
ERC20 tokens. The purpose of this program is to serve as a starting point for those who are new to Solidity ERC20 PROTOCOL.


## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a TWO functions that performs the "Minting (owner) and Burning Token(any)". 

## Getting Started

### To do Task :-> 

Your task is to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:

1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

```solidity

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


```

### Tools Used

NodeJS
Hardhat
Solidity
Metamask 
snowtrace testnet 


Create the ERC-20 token 
Set the name to “Degen”
Set the symbol to “DGN”
Test the smart-contract (All tests should pass)
Deploy the contract to Avalanche Fuji Testnet
Test on testnet (All tests should pass)
Verify the smart-contract on Snowtrace
Share the smart-contract with us!



## Authors

Navjot Singh Sabharwal 
[@linkedIn](www.linkedin.com/in/navjot-singh-407025256)



