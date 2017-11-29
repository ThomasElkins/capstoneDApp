var Voting = artifacts.require("./Voting.sol");
module.exports = function(deployer) {
  deployer.deploy(Voting, ['Thomas', 'Matt', 'McKenzi'], {gas: 470000});
};
