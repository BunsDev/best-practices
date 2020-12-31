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

### Severity: Medium
- <b>Unauthorized Self-Destruct</b>: whether the contract can be killed by any arbitrary address.
- <b>Revert DoS</b>: whether the contract can be killed by any arbitrary address.
- <b>Unchecked External Call</b>: whether the contract has any external call without checking the return value.
- <b>Gasless Send</b>: whether the contract is vulnerable to hasless send.
- <b>Send Instead of Transfer</b>: whether the contract uses the send function instead of transfer.
- <b>Costly Loop</b>: whether the contract has any costly loop which may lead to Out-Of-Gas exception.
- <b>(Unsafe) Use of Untrusted Libraries</b>: whether the contract uses any suspicious libraries.
- <b>Transaction Ordering Dependence</b>: whether the final state of the contract depends on the order of the transactions.
- <b>Deprecated Uses</b>: wether the contract uses the deprecated tx.origin to perform the authorization.

## Additional Recommendations
- <b>Avoid Use of Variadic Byte Array</b>: use of fixed-size byte array is better than that of byte[], as the latter is a waste of space.
- <b>Make Visibility Level Explicit</b>: assign explicit visibility specifiers for functions and state variables.
- <b>Make Type Inference Explicit</b>: avoid the keyword var to specify the type ik.e. it asks the compiler to deduce the type, which is not safe, esp in a loop.
- <b>Adhere to Function Declaration Strictly</b>: solidity compiler (v0.4.23) enforces strict ABI length checks for return data from calls(), which may break the execution if the function implementation does NOT follow its declaration (e.g., no return in implementing transfers() of ERC20 tokens.


## References
- axic. [Enforcing ABI length checks for return data from calls can be breaking](https://github.com/ethereum/solidity/issues/4116)
- MITRE. [CWE-1041: Use of Redundant Code](https://cwe.mitre.org/data/definitions/1041.html)
- MITRE. [CWE-841: Improper Enforcement of Behavioral Workflow](https://cwe.mitre.org/data/definitions/841.html)
- MITRE. [CWE CATEGORY: Bad Coding Practices](https://cwe.mitre.org/data/definitions/1006.html)
- MITRE. [CWE CATEGORY: Business Logic Errors](https://cwe.mitre.org/data/definitions/840.html)
- MITRE. [CWE VIEW: Development Concepts](https://cwe.mitre.org/data/definitions/699.html)
- OWASP.	[Risk Rating Methodology](https://www.owasp.org/index.php/OWASP_Risk_Rating_Methodology)
- PeckShield. [ALERT: New batchOverflow Bug in Multiple ERC20 Smart Contracts (CVE-2018- 10299)](https://www.peckshield.com/2018/04/22/batchOverflow/)
- PeckShield.[ New burnOverflow Bug Identified in Multiple ERC20 Smart Contracts (CVE-2018- 11239)](https://www.peckshield.com/2018/05/18/burnOverflow/)
- PeckShield. [New multiOverflow Bug Identified in Multiple ERC20 Smart Contracts (CVE-2018-10706)](https://www.peckshield.com/2018/05/10/multiOverflow/)
- PeckShield. [New proxyOverflow Bug in Multiple ERC20 Smart Contracts (CVE-2018-10376)](https://www.peckshield.com/2018/04/25/proxyOverflow/)
- PeckShield. [PeckShield Inc](https://www.peckshield.com)
- PeckShield. [Your Tokens Are Mine: A Suspicious Scam Token in A Top Exchange](https://www.peckshield.com/2018/04/28/transferFlaw/)
- Solidity. [Warnings of Expressions and Control Structures](http://solidity.readthedocs.io/en/develop/control-structures.html)
