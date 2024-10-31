
# MoonUp Protocol Smart Contracts

# Summary

Contracts in scope: All files in
MoonUp/src


# Details

Total : 13 files,  409 codes, 168 comments, 142 blanks, all 719 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [src/Interfaces/IPumpFactory.sol](/src/Interfaces/IPumpFactory.sol) | Solidity | 7 | 1 | 6 | 14 |
| [src/MoonUpBeaconFactory.sol](/src/MoonUpBeaconFactory.sol) | Solidity | 91 | 14 | 39 | 144 |
| [src/MoonUpMarket/MoonUpMarketImplementation.sol](/src/MoonUpMarket/MoonUpMarketImplementation.sol) | Solidity | 151 | 1 | 40 | 192 |
| [src/MoonUpMarket/MoonUpMarketProxy.sol](/src/MoonUpMarket/MoonUpMarketProxy.sol) | Solidity | 17 | 21 | 9 | 47 |
| [src/MoonUpMarket/Proxy.sol](/src/MoonUpMarket/Proxy.sol) | Solidity | 24 | 27 | 11 | 62 |
| [src/MoonUpMarket/UniswapInteraction.sol](/src/MoonUpMarket/UniswapInteraction.sol) | Solidity | 15 | 1 | 3 | 19 |
| [src/MoonUpMarket/interfaces/IBeacon.sol](/src/MoonUpMarket/interfaces/IBeacon.sol) | Solidity | 4 | 9 | 2 | 15 |
| [src/MoonUpMarket/interfaces/IERC20.sol](/src/MoonUpMarket/interfaces/IERC20.sol) | Solidity | 11 | 58 | 9 | 78 |
| [src/MoonUpMarket/interfaces/INonfungiblePositionManager.sol](/src/MoonUpMarket/interfaces/INonfungiblePositionManager.sol) | Solidity | 30 | 16 | 3 | 49 |
| [src/MoonUpMarket/interfaces/IUniswapFactory.sol](/src/MoonUpMarket/interfaces/IUniswapFactory.sol) | Solidity | 13 | 17 | 3 | 33 |
| [src/MoonUpMarket/interfaces/IUniswapV3Pool.sol](/src/MoonUpMarket/interfaces/IUniswapV3Pool.sol) | Solidity | 19 | 1 | 5 | 25 |
| [src/MoonUpMarket/interfaces/IWETH.sol](/src/MoonUpMarket/interfaces/IWETH.sol) | Solidity | 10 | 1 | 1 | 12 |
| [src/token/erc20.sol](/src/token/erc20.sol) | Solidity | 17 | 1 | 11 | 29 |



## Languages
| language | files | code | comment | blank | total |
| :--- | ---: | ---: | ---: | ---: | ---: |
| Solidity | 13 | 409 | 168 | 142 | 719 |

## Directories
| path | files | code | comment | blank | total |
| :--- | ---: | ---: | ---: | ---: | ---: |
| . | 13 | 409 | 168 | 142 | 719 |
| . (Files) | 1 | 91 | 14 | 39 | 144 |
| Interfaces | 1 | 7 | 1 | 6 | 14 |
| MoonUpMarket | 10 | 294 | 152 | 86 | 532 |
| MoonUpMarket (Files) | 4 | 207 | 50 | 63 | 320 |
| MoonUpMarket/interfaces | 6 | 87 | 102 | 23 | 212 |
| token | 1 | 17 | 1 | 11 | 29 |


## Technical Documentation
Link: https://app.gitbook.com/invite/XX4R3sfqRlrZATQjxOeS/9WxBXzYJfMY23NvvyHv3

## Additional Information For Audit

The requirements for this audit are as follows:

1. Gas Optimization: The Guild Audit security team is requested to conduct a comprehensive analysis focused on gas optimization. This involves identifying sections of the system where excessive gas consumption occurs and providing detailed recommendations for improvement. Recommendations should include both a written proof of concept and corrective code, demonstrating the specific changes needed.

2. Vulnerability Assessment: The Guild Audit security team is expected to identify vulnerabilities across all severity levels, including high, medium, low, and informational issues within the protocol. For each high and medium severity finding, the report should include both a proof of concept and an accompanying proof of code, along with the necessary corrective code to resolve each issue.

3. Security Review: Following the implementation of changes recommended in the initial audit, a follow-up review by the Guild Audit security team is requested to ensure that all updates have been accurately applied and that the protocol meets security standards.