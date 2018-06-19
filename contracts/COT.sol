pragma solidity ^0.4.24;

import "../node_modules/zeppelin-solidity/contracts/token/ERC827/ERC827Token.sol";

contract COT is ERC827Token {
  string public constant name = "CoTrader Token"; // solium-disable-line uppercase
  string public constant symbol = "COT"; // solium-disable-line uppercase
  uint8 public constant decimals = 18; // solium-disable-line uppercase

  // 100 billion (10^11) tokens
  uint256 public constant INITIAL_SUPPLY = (10 ** 11) * (10 ** uint256(decimals));
  
  function COT() public {
    address initialHolder = msg.sender;

    totalSupply_ = INITIAL_SUPPLY;
    balances[initialHolder] = INITIAL_SUPPLY;
    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }
}
