pragma solidity ^0.5.3;
contract Callee {
  uint temperature = 0;
  function tempDelta(uint x) public {
    temperature = add(temperature, x);
  }

  function add(uint x, uint y) internal pure returns (uint z) {
    z = x + y;
    require(z >= x);
  }
}

contract easyNest {
  Callee callee;
  function raiseTemp(uint x) public {
    callee.tempDelta(x);
  }
}
