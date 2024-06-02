contract MyToken {
    string public name = "MyToken"; // Token name
    string public symbol = "MTK";   // Token abbreviation
    uint256 public totalSupply;     // Total supply of tokens
    mapping(address => uint256) public balances; // Mapping to store balances of addresses

    function mint(address _to, uint256 _value) public {
        require(_to != address(0), "Invalid address");
        totalSupply += _value;        // Increase total supply
        balances[_to] += _value;      // Increase balance of the specified address
    }

    function burn(address _from, uint256 _value) public {
        require(_from != address(0), "Invalid address");
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;        // Decrease total supply
        balances[_from] -= _value;    // Decrease balance of the specified address
    }
}
