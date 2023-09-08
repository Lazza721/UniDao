// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken is ERC20Votes{
    uint256 public max_supply = 1000000000000000000000000; //1 millon a la 18 dec

    constructor()
    ERC20("GovernanceToken", "Udao")
    ERC20Permit("GovernanceToken")
    {
        _mint(msg.sender, max_supply); //mandar los tokens al dueño del contrato 
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
        )internal override (ERC20Votes){
        super._mint(to, amount); //we inherit and mint to a 
    }



}

