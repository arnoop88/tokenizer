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

### 3. **Fixed Supply of 42,000,000 Tokens**  
  - **Scarcity Model**: Mimics Bitcoin’s fixed supply to prevent inflation.  
  - **Project Requirement**: The token name includes "42" to align with the 42 Network’s theme.  
  - **No Minting/Burning**: Ensures fairness by eliminating centralized control post-deployment.  

### 4. **No Ownership Controls**  
  - **Decentralization**: Once deployed, no entity can alter supply or freeze accounts.  
  - **Trust Minimization**: Aligns with blockchain’s core philosophy of removing intermediaries.   

---

### Deployment Details  
- **Network**: BNB Smart Chain Testnet (later upgradable to Mainnet).  
- **Contract Address**: [`0x2Bf4f83B77F147811a6dB52A4210257F46B0c79C`](https://testnet.bscscan.com/address/0x2Bf4f83B77F147811a6dB52A4210257F46B0c79C)  
- **Explorer**: Verified on BscScan for public transparency.
