const hre = require("hardhat");
const tokenContractJSON = require("../artifacts/contracts/MyImageNFT.sol/MyImageNFT.json");

const tokenAddress = "0x299B3e69215e855856E589bb52a5594797DFf7cf"; 
const tokenABI = tokenContractJSON.abi;
const walletAddress = "0x1F44446a1f7E699231611bB9CE586fD17CB6ce71";

async function main() {
  try {
    const token = await hre.ethers.getContractAt(tokenABI, tokenAddress);
    const balance = await token.balanceOf(walletAddress);
    console.log(`You now have: ${balance} NFTs in your wallet`);
  } catch (error) {
    console.error(error);
    process.exitCode = 1;
  }
}

main();