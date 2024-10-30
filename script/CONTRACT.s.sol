// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Script, console } from "lib/forge-std/src/Script.sol";

contract CONTRACTScript is Script {
    function setUp() public {
    }

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        vm.stopBroadcast();
    }
}
