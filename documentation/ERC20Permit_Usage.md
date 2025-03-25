# Gasless Approvals with Permit  
### Step 1: Sign a Permit  
```javascript  
const permitData = {
  owner: "0xYourAddress",
  spender: "0xDEXAddress",
  value: ethers.parseUnits("100", 18),
  deadline: Math.floor(Date.now() / 1000) + 3600,
};
const signature = await signer.signTypedData(...);
```
### Step 2: Submit Permit + Transfer
```solidity
contract.permit(owner, spender, amount, deadline, signature);
contract.transferFrom(owner, recipient, amount);
```