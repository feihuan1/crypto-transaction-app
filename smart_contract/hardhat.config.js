// https://polygon-mainnet.g.alchemy.com/v2/MQwc3jxnI-i2I33EYyl0VAxryFKWYvi5

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    polygon: {
      url: 'https://polygon-mainnet.g.alchemy.com/v2/MQwc3jxnI-i2I33EYyl0VAxryFKWYvi5', // Update with your Alchemy API key
      accounts: ['2837e4b49e6bce7e83638547795de52a961f245cc217b179c1e35dc063ca7f4c'], // Add your testnet account private key
    },
  },
};