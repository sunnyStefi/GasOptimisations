//SPDX-License-Indentifier:MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {GasOptimisation} from "../src/GasOptimisation.sol";

contract GasOptimisationTest is Test {
    GasOptimisation public gasOptimisator;

    function setUp() external {
        gasOptimisator = new GasOptimisation();
    }

    function test_normalNotation() public {
        gasOptimisator.normalNotation();
    }

    function test_shortHandNotation() public {
        gasOptimisator.shortHandNotation();
    }

    function test_returnVariablesExtended() public {
        gasOptimisator.returnVariablesExtended();
    }

    function test_returnVariablesReduced() public {
        gasOptimisator.returnVariablesReduced();
    }

    function test_callingTypeMaxDirectly() public {
        gasOptimisator.callingTypeMaxDirectly();
    }

    function test_callingConstantTypeMax() public {
        gasOptimisator.callingConstantTypeMax();
    }
}
