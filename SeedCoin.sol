// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol';

contract SEED is ERC20,Ownable{

    mapping(address => bool) public frozenAccounts;

    // When accounts are frozen or unfrozen
    event AccountFrozen(address indexed _addr);
    event AccountThawed(address indexed _addr);

    constructor() ERC20("Seed.Photo", "SEED") {
        _mint(msg.sender, 1826000000 * 10 ** decimals());
    }

    function freezeAccount(address addr)
        public
        onlyOwner
    {
      require(!frozenAccounts[addr], "Account already is Frozen!");
      require(addr != owner(), "Owner can\'t be frozen");
      frozenAccounts[addr] = true;
      emit AccountFrozen(addr);
    }  // freezeAccount


    function thawedAccount(address addr) 
        public 
        onlyOwner
    {
        require(frozenAccounts[addr], "Account already is Thawed!");
        frozenAccounts[addr] = false;
        emit AccountThawed(addr);
    } 

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal virtual
        override(ERC20)
    {
        require(!frozenAccounts[from], "Frozen Account Can\'t Transfer Token,Please Contact to Support Team!");
        super._beforeTokenTransfer(from, to, amount);

    }
}
