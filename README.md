# 42Coin (42C)
**A Fixed-Supply Token for the 42 Community**
This project creates a decentralized, fixed-supply token for the 42 community. Key decisions prioritize **security**, **compliance**, and **ease of adoption**, while aligning with BNB Chain’s ecosystem.

---

## 🔍 Design Choices & Rationale
### 1. **Blockchain Platform: BNB Smart Chain**
  - **Partnership Alignment**: The project is a collaboration between 42 and BNB Chain, making BSC the natural choice.
  - **Cost Efficiency**: BSC offers lower transaction fees (~$0.05) compared to Ethereum (~$5), ideal for testing and mass adoption.
  - **EVM Compatibility**: Seamless integration with Ethereum tools (MetaMask, Remix, Hardhat).

### 2. **Token Standard: ERC-20 with ERC20Permit**
  - **Interoperability**: Works with all major wallets, exchanges, and DApps.
  - **Simplicity**: Reduces development risks by using a battle-tested standard.
  - **Gasless UX**: Users can approve token transfers via signatures (EIP-2612), reducing friction in decentralized apps.

### 3. **Fixed Supply of 42M Tokens**
  - **Scarcity Model**: Mimics Bitcoin’s fixed supply to prevent inflation.
  - **Project Requirement**: The token name and supply includes "42" to align with the 42 Network’s theme.
  - **No Minting/Burning**: Ensures fairness by eliminating centralized control post-deployment.

### 4. **Decentralized Multisig Governance**
  - **Enhanced Security**: Critical actions (e.g., initial token distribution) require approval from 2/3 trusted signers.
  - **No Single Point of Failure**: Funds are held in a [custom multisig wallet](#-deployment-details) with decentralized ownership.
  - **Compliance**: Satisfies the bonus requirement while maintaining the token’s immutability.

### 5. **No On-Chain Ownership Controls**
  - **Trust Minimization**: The token contract itself has no admin functions or upgradeability.
  - **Transparency**: All token logic is immutable post-deployment.

---

## 🚀 Deployment Details
- **Network**: BNB Smart Chain Testnet.
- **42Coin Contract Address**: [0x18a6BDA73e35B297D2F4a455A13e7D8AD3A24848](https://testnet.bscscan.com/address/0x18a6BDA73e35B297D2F4a455A13e7D8AD3A24848)
- **Multisig Wallet Address**: [0x9df83865208a45b89181ec293ac0b6304875df08](https://testnet.bscscan.com/address/0x9df83865208a45b89181ec293ac0b6304875df08)
- **Explorer**: Both contracts verified on BscScan for public transparency.

---

## 📂 Documentation
- **[Token Specifications](documentation/Token_Overview.md)**: Technical details and use cases.
- **[Multisig Wallet Guide](documentation/Multisig_Guide.md)**: Learn how to propose, approve, and execute transactions.

---

## 🛠️ Key Features
- Fixed supply of 42,000,000 tokens
- ERC20Permit support for gasless approvals
- Decentralized multisig treasury management
- Fully audited via OpenZeppelin contracts

---

By integrating a multisig system, 42Coin ensures enterprise-grade security while preserving its decentralized ethos. 🔒
