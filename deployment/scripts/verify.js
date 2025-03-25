const { run } = require("hardhat");

async function verify(address, constructorArguments) {
  try {
    await run("verify:verify", { address, constructorArguments });
  } catch (error) {
    if (error.message.includes("Already Verified")) {
      console.log("Already verified!");
    } else {
      console.error(error);
    }
  }
}

async function main() {
  // Verify MultisigWallet
  await verify(
    process.env.MULTISIG_ADDRESS,
    [
      process.env.MULTISIG_OWNERS.split(","), 
      parseInt(process.env.MULTISIG_THRESHOLD)
    ]
  );

  // Verify 42Coin
  await verify(
    process.env.TOKEN_ADDRESS,
    [process.env.MULTISIG_ADDRESS]
  );
}

main();