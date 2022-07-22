const OracleBasic = artifacts.require("OracleBasic");

module.exports = function (deployer) {
  deployer.deploy(OracleBasic);
};
