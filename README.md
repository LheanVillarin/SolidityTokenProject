My name is Lhean Ruzzele N. Villarin, and I am a student at National Teachers College. In this project, we've developed a Solidity smart contract named MyToken to manage a token system on the Ethereum blockchain. Let's break down the functionality of the contract:

Firstly, we declare public variables name, symbol, and totalSupply to store the token's name, symbol, and total supply, respectively. These variables allow users to access key information about the token.

Next, we define a mapping named balances that associates each address with its corresponding token balance. This mapping enables efficient tracking of token ownership and balances across different addresses.

Moving on to the functionality of the contract, we implement a mint function that enables the creation of new tokens. This function takes two parameters: _to, representing the address to mint tokens for, and _value, indicating the number of tokens to mint. Upon execution, the mint function increases the total supply by the specified _value and adds the same amount of tokens to the balance of the _to address.

Additionally, we implement a burn function to allow the destruction of tokens. Similar to the mint function, the burn function accepts _from and _value parameters, specifying the address from which tokens will be burned and the number of tokens to burn, respectively. Before executing the burn operation, the function verifies that the _from address has a sufficient balance to burn the specified _value tokens. If the condition is met, the function decreases the total supply by the specified _value and deducts the same amount of tokens from the balance of the _from address.

To ensure proper functionality and prevent unauthorized token burning, the burn function includes a conditional statement that checks if the balance of the _from address is greater than or equal to the _value being burned. If the condition is not met, the function reverts the transaction with an error message, indicating an insufficient balance to burn.

Overall, this Solidity contract provides a robust framework for token management, offering essential functionalities such as minting new tokens, burning existing tokens, and maintaining accurate balance information for each address. 

