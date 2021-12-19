// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

import "@openzeppelin/contracts/finance/VestingWallet.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract vestingFactory is Ownable {

    constructor() {

    }

    function createVesting(uint64 _startTime, uint256 _duration, address _receiver, address _owner) public {
        vestingContract = new VestingWallet(_receiver, _startTime, _duration);
    }
}