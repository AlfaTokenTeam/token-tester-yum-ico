pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TokenTesterYum is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TokenTesterYum(address _owner)  UpgradeableToken(_owner) {
    name = "TokenTesterYum";
    symbol = "TTY";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}