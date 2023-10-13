// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract GasOptimisation {
    uint256 public a;
    uint256 public b;
    uint256 constant MAXUINT256 = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

    //44562 gas --> CHEAPER, not EXPENSIVE ???
    function shortHandNotation() public {
        a = 1;
        b = 2;
        a += b;
    }

    //44584 gas --> EXPENSIVE, not CHEAPER ???
    function normalNotation() public {
        a = 1;
        b = 2;
        a = a + b;
    }

    function returnSomeUint256() public returns (uint256 valueA, uint256 valueB) {
        return (a, b);
    }

    //4382 gas --> EXPENSIVE
    function returnVariablesExtended() public {
        (uint256 a, uint256 b) = returnSomeUint256();
    }

    //186 gas --> CHEAPER
    function returnVariablesReduced() public {
        (, uint256 b) = returnSomeUint256();
    }

    //206 gas --> CHEAPER, not EXPENSIVE ???
    function callingTypeMaxDirectly() public returns (uint256 test) {
        test = type(uint256).max;
    }

    //250 gas --> EXPENSIVE, not CHEAPER ???
    function callingConstantTypeMax() public returns (uint256 test) {
        test = MAXUINT256;
    }
}
