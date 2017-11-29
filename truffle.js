// Allows us to use ES6 in our migrations and tests.
require('babel-register')

module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 8545,
      network_id: '*',
      gas: 470000,
      from: '0x801f46579fee28631b1f45b8f5229b60ba7bf105'
    }
  }
}
