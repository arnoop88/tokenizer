# Deployment Guide
### 1. Install Dependencies
```bash
npm install --save-dev hardhat @nomicfoundation/hardhat-toolbox
```
### 2. Deploy to BSC Testnet
```bash
npx hardhat run scripts/deploy.js --network bscTestnet
```
### 3. Verify on BscScan
```bash
npx hardhat verify --network bscTestnet <CONTRACT_ADDRESS>
```