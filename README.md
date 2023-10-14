## New Token 

# Minting and Burning Tokens

This Solidity contract facilitates the creation and destruction of tokens. It demonstrates the fundamental concepts of creating and managing a token, including minting and burning tokens, using a basic conditional statement to ensure the validity of the operation.

### Execution Instructions

To run this program, you can utilize Remix, a web-based Solidity Integrated Development Environment (IDE). Follow the steps below to get started:

1. Access the Remix website at https://remix.ethereum.org/.
2. Click on the "+" icon in the left-hand sidebar to create a new file and save it with a .sol extension (e.g., newToken.sol).
3. Copy and paste the following code into the file editor:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract NewToken {

    // Public variables for the token details
    string public Name = "Shashank Kumar";
    string public Abbrv = "SK";
    uint256 public totalAmount = 200;

    // Mapping of addresses to token balances
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function Mint(address _receiver, uint256 _quantity) public {
        totalAmount += _quantity;
        balances[_receiver] += _quantity;
    }

    // Burn function to destroy existing tokens
    function Burn(address _holder, uint256 _quantity) public {
        if (balances[_holder] >= _quantity) {
            totalAmount -= _quantity;
            balances[_holder] -= _quantity;
        }
    }
}
```



4. Switch to the "Solidity Compiler" tab on the left-hand side and select "0.8.18" or a compatible version. Then, hit the "Compile newToken.sol" button.

5. Once the code is compiled, go to the "Deploy & Run Transactions" tab on the left. Choose the "NewToken" contract from the dropdown menu and click "Deploy."

6. You can now work with the contract by using the "Burn" or "Mint" function. Provide the necessary details. To check the results, monitor the "balances" and "totalAmount" variables.
 
### Author

Shashank Kumar
shashanksr762@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for detail
