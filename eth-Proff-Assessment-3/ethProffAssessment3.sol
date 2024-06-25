// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// This provides the funcionality to use ERC20 protocol .
import "@openzeppelin/contracts/token/ERC20/ERC20.sol" ;

contract ethProffAssessment3 is ERC20 {

address public owner;

constructor(

    string memory name , 
    string memory symbol) 
    ERC20 (name , symbol){

       owner = msg.sender ;

    }


modifier onlyAdmin {
    require(owner == msg.sender , "Invalid Authentication");
    _;
  }


// Function to mint tokens, only callable by the owner
    function mint(address _to, uint256 _amount) public onlyAdmin {
        _mint(_to, _amount);
    }


    // Function to burn tokens, callable by any user
    function burn(uint256 _amount) public {
        _burn(msg.sender, _amount);
    }

}

