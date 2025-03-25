const { ethers } = require("hardhat");

async function main() {
  // Deploy MultisigWallet first
  const MultisigWallet = await ethers.getContractFactory("MultisigWallet");
  const owners = process.env.MULTISIG_OWNERS.split(",");
  const requiredSignatures = parseInt(process.env.MULTISIG_THRESHOLD);
  
  const multisig = await MultisigWallet.deploy(owners, requiredSignatures);
  await multisig.waitForDeployment();
  console.log("MultisigWallet deployed to:", await multisig.getAddress());

  // Deploy 42Coin, minting to the multisig address
  const Coin42 = await ethers.getContractFactory("Coin42");
  const coin42 = await Coin42.deploy(await multisig.getAddress());
  await coin42.waitForDeployment();
  console.log("42Coin deployed to:", await coin42.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});