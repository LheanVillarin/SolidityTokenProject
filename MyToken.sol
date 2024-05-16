contract MyToken {
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}









contract MyTokenDemo {
    MyToken myToken = new MyToken();

    function mintDemo() public {
        myToken.mint(msg.sender, 100);
    }

    function burnDemo() public {
        myToken.burn(msg.sender, 50);
    }

  function viewTotalSupply() public view returns (uint256) {
        return myToken.totalSupply();
    }

    function viewBalance() public view returns (uint256) {
        return myToken.balances(msg.sender);
    }
}
