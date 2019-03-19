pragma solidity ^0.5.3;

import "ds-test/test.sol";

import "./Multiplecalls.sol";

contract MultiplecallsTest is DSTest {
    Multiplecalls multiplecalls;

    function setUp() public {
        multiplecalls = new Multiplecalls();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
