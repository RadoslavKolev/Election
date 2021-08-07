module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      from: "0x31b41ff0Eb143eF949b6d4bb105796893F9e6578",
      network_id: "*" // Match any network id
    },
    develop: {
      port: 8545
    }
  },
  compilers: {
    solc: {
      version: "^0.8.6"
    }
  }
};
