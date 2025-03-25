# Deployment Steps
1. **Compile Contracts**
   - `42Coin.sol` (token) and `MultisigWallet.sol` in Remix/Hardhat.
2. **Connect to BSC Testnet** via MetaMask.
3. **Deploy the Multisig Wallet**:
   ```solidity
   constructor arguments: ["0xOwner1","0xOwner2","0xOwner3"], 2
   ```
4. **Deploy 42Coin**: Mint tokens to the multisig address.
5. **Verify Both Contracts** on BscScan using their addresses.