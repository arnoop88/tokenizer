async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying with account:", deployer.address);
    const Coin42 = await ethers.deployContract("Coin42");
    await Coin42.waitForDeployment();
    console.log("Contract address:", await Coin42.getAddress());
}
main();