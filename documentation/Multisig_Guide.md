# Custom Multisig Wallet
- **Contract Address**: `0x9df83865208a45b89181ec293ac0b6304875df08`
- **Owners**:
  - `0x258f2B38075157965b03EA0C593a5531CD70E87A`
  - `0x44C3B63A8554d905bBC1AE3b318CA38E12c699eB`
  - `0x982AA440AB4Ceb8a899A65B03Fa2a06AA3fd0467`
- **Threshold**: 2/3 approvals required.

---

## 🛠️ How to Transfer Tokens

### 1. Submit a Transaction
Call `submitTransaction(address _to, uint256 _value, bytes memory _data)` with:
- `_to`: Token contract address (`42Coin` address).
- `_value`: `0` (no BNB is sent).
- `_data`: Encoded `transfer(address recipient, uint256 amount)` function call.
### 2. Approve the Transaction
Call `approveTransaction(uint256 _txId)` with the transaction ID returned from `submitTransaction`.
- **Requirement**: At least 2 owners must call this function.
### 3. Execute the Transaction
Call `executeTransaction(uint256 _txId)` after reaching the threshold.