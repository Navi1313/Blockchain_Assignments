/** @type import('hardhat/config').HardhatUserConfig */

require("dotenv").config();
require("@nomiclabs/hardhat-ethers");
const {API_URL , PRIVATE_KEY} = process.env;
module.exports = {
  solidity: "0.8.24",
  defaultNetwork : "sepolia", 
  networks :{
    hardhat :{}, 
    sepolia :{
      url :API_URL, 
      chainId: 11155111,
      accounts : [`0x${PRIVATE_KEY}`]
    },
    polygon_amoy: {
      url: "https://rpc-amoy.polygon.technology/",
      chainId: 80002,
      accounts: [process.env.PRIVATE_KEY]
    }
  }
}
