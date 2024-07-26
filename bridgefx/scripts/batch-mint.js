const { ethers } = require("hardhat");

async function main() {
  const [owner] = await ethers.getSigners();
  const MyImageNFT = await ethers.getContractFactory("MyImageNFT");
  // const myimagenft = await MyImageNFT.deploy();
  // await myimagenft.deployed();

  const myNFT = await MyImageNFT.attach("0xF735D497D032BA66980B523F92934CaAbA9Ce3b2"); 


  console.log("Deployed Successfully to address:", owner.address);

  const tokenURIs = [
    "ipfs://QmdRQY5ydjT3H5DS2zP9YSK9f7D2yNK4JvWEuVoBmfzsU9",
    "ipfs://QmX8kmnRJW1kcHvYpCyN5ZYRgwNTD1kEavLAeN5EmvjCGf",
    "ipfs://QmQWdFuscSrbNjRNdkRtU5VyTE1SzHud6xsQbcNti4GyET",
    "ipfs://QmTNum7Z2C3AppbYPESBh2gBCLZNmY4s4SnREXTzNNeVvr",
    "ipfs://QmSrs9khDdDnpGmocL4ADhvGN6wQMjzr9mHcMVv77fyCcR",
  ];

  const prompts = [
    "create a image in which an astronaut in the ocean with James web telescope ",
    "create a image in which an astronaut in the ocean with James web telescope ",
    "create a image in which an astronaut in the ocean with James web telescope ",
    "create a image in which an astronaut on the titan stattelite of jupiter planet",
    "create a image in which an astronaut on the titan stattelite of jupiter planet",
  ];

  for (let i = 0; i < tokenURIs.length; i++) {
    const tx = await myNFT.mintNFT(owner.address, tokenURIs[i], prompts[i]);
    await tx.wait();
    console.log(`Minted NFT ${i + 1} with tokenURI: ${tokenURIs[i]} and prompt: ${prompts[i]}`);
  }
}

// Execute the main function
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
