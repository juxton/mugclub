// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {ERC721} from "@openzeppelin/token/ERC721/ERC721.sol";

contract MockERC721 is ERC721 {
    uint256 public nonce;

    constructor() ERC721("Mock", "MOCK") {}

    function mint(address _to) external {
        _mint(_to, nonce++);
    }

    function mintMany(address _to, uint256 _amount) external {
        for (uint256 i; i < _amount; i++) {
            _mint(_to, nonce++);
        }
    }
}
