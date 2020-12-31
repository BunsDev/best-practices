# Best Practices
Lessons learned from smart contract audits.

## Basic Coding Bugs
### Severity: Critical
- <b>Constructor Mismatch</b>: whether the contract name and its constructor are unidentical.
- <b>Ownership Takeover</b>: whether the transfer ownership function is vulnerable.
- <b>Redundant Fallback Function</b>: whether the contract has a redundant fallback function.
- <b>Overflows and Underflows</b>: whether the contarct has general overflows or underflow vulnerabilities.
- <b>Reentrancy</b>: an issue when code can call back into your contract and change statem such as withdrawing ETH.

### Severity: High
- <b>Money-Giving Bag</b>: whether the contract returns funds to an arbitrary address.
- <b>Blackhole</b>: whether the contract locks ETH indefinitely: merely in without an out.
