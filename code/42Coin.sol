// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract Coin42 is ERC20, ERC20Permit  {
    // Fixed supply: 42,000,000 tokens (42M * 10^18 units)
    uint256 private constant TOTAL_SUPPLY = 42_000_000 * 10 ** 18;

    constructor(address multisigAddress)
        ERC20("42Coin", "42C")
        ERC20Permit("42Coin")
    {
        _mint(multisigAddress, TOTAL_SUPPLY); // Mint all tokens to multisig wallet
    }

    // No mint() or burn() functions! 🔒
}