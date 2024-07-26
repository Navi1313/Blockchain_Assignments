<div align="center">
  <h3 align="center">⛓️ Bridging NFTS from sepolia to Polygon Amoy ⛓️‍💥 </h3>
</div>

## 📋 <a name="table">Table of Contents</a>

1. 🤖 [Introduction](#introduction)
2. ⚙️ [Tech Stack](#tech-stack)
3. 🤸 [Quick Start](#quick-start)
4. 🔗 [Links](#links)
5. 🚀 [Output](#Output)


## <a name="introduction">🤖 Introduction</a>

Polly Proff Advenced Project-1 -> This is metacreafter project assessment for a project1 in modeule1 of poly proff Advanced . in this Smart contract has at least two functions mintNFT() and PromptDescription(). Minting Nfts on OpeN Sea and then moving to Polygon blockchain


## <a name="tech-stack">⚙️ Tech Stack</a>

- Solidity
- etherium blockchain
- Hardhat
- Pinata , Opensea
- etherscan sepolia test network, polygon amoy testnet 
- Use any AI to generate 5 images

## <a name="quick-start">🤸 Quick Start</a>

Follow these steps to set up the project locally on your machine.

**Prerequisites**

Make sure you have the following installed on your machine:

- **Make sure to have node_modele directory to work everything fine**

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/en)
- [npm](https://www.npmjs.com/) (Node Package Manager)
- Metamak wallet with sepolia test ethers
  
-----------------------------------------------------------------

**Smart Contract setup**

1. Create an contract in environment of Hardhat 
```bash

npm install --save-dev hardhat
```

2. Initialize the hardhat 
```bash

npm hardhat init
```

3. Select the empty Hardhat Project build from scratch.

4. save ethers libraries so add it.
   
```bash
npm install --save-dev @nomiclabs/hardhat-ethers ethers
```

5. Set up the hardhat.config.json file.
   
6. All environment is set Start Building MyImageNFT contract.
   
7. **Compiling the Project**
   
```bash
npx hardhat compile  
```

8. Create an scripts/deploy.js file
   
9. **Deploying the Script**

```bash
npx hardhat run scripts/deploy.js --network sepolia
```

10. Generate an 5 images with prompt and add on pinata with json files also 


11. Create a batchMint.js file and deploy the NFTs and Prompt using your address
    
```bash
npx hardhat run scripts/batchMint.js --network sepolia
```

12. Go to OpenSea and see the Nft Minted if Nfts are visible then fine ok

13. Now create a transfer.js file for transfering to Polygon
    
```bash
npx hardhat run scripts/transfer.js --network sepolia
```

14. got to rootTunnelAbi address and see Nfts transfered or not if yes the fine move ahead

15. Go to polyscan and also see the Nfts minted in transaction if yes then done

16. Now create a balance.js file for checking balance of your NFTS on deploying 
    
```bash
npx hardhat run scripts/balance.js --network sepolia
```

if it is showing 5 NFTs that means you all sorted and done ✅ 🫡


-----------------------------------------------------------------------------


## <a name="links">🔗 Links</a>

1. <a href="https://hardhat.org/hardhat-runner/docs/getting-started"> Hardhat documentation</a>
2. <a href="https://app.pinata.cloud/pinmanager">Pinata</a>
3. <a href="https://sepolia.etherscan.io/address/">Sepolia Etherscan </a>
4. <a href="https://amoy.polygonscan.com/address/">Polygon Amoy Testnet</a>


**Developer**

<a href="www.linkedin.com/in/navjot-singh-407025256"> Navi Sabharwal </a>


## <a name="output">⚡️ NFT DEPLOYED ON OPENSEA AT MY ACCOUNT</a>

<img width="1440" alt="Screenshot 2024-07-26 at 9 37 25 PM" src="https://github.com/user-attachments/assets/2b499f1f-b90c-4759-967e-a277f89c30a5">

