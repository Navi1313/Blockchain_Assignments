# Minting and Burning Token 

This Solidity program is a simple "Minting and Burning Token" program that demonstrates the basic syntax and functionality of the Solidity 
ERC20 tokens. The purpose of this program is to serve as a starting point for those who are new to Solidity ERC20 PROTOCOL.


## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a TWO functions that performs the "Minting (owner) and Burning Token(any)". 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension . 

```solidity
    // Function to mint tokens, only callable by the owner
    function mint(address _to, uint256 _amount) public onlyAdmin {
        _mint(_to, _amount);
    }

    // Function to burn tokens, callable by any user
    function burn(uint256 _amount) public {
        _burn(msg.sender, _amount);
    }
    // function that transfer the tokens from current account to the another :->
    function transferTo(address _to, uint _val) public  {
        _transfer(msg.sender, _to, _val);
    }

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.24" (or another compatible version), and then click on the "Compile ethProffAssessment3.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy By adding an TOKEN NAME AND TOKEN SYMB0L & Run Transactions" tab in the left-hand sidebar. 

Once the contract is deployed, you can interact with it by calling the mint() and burn() function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

## Authors

Navjot Singh Sabharwal 
[@linkedIn](https://www.loom.com/share/50a00e8a92c746aebda473131c6cea1d)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

