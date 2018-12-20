var IDMS = artifacts.require("./IDMS.sol");

module.exports = function(deployer) {
  deployer.deploy(IDMS);
};


// IDMS.deployed().then(function(instance) { app = instance })