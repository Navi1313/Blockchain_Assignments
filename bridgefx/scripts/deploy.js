const { ethers } = require("hardhat");
async function main(){

// Contract Loading 
const MyImageNFT = await ethers.getContractFactory("MyImageNFT");

// Deploying an Contract 
const myimagenft = await MyImageNFT.deploy();
await myimagenft.deployed();

console.log("Depolyed Successfully to address :" , myimagenft.address);

}
 
main()
.then(() => process.exit(0))
.catch((error) => {
    console.error(error);
    process.exit(1)
});
