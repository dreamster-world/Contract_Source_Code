// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DREAMSTERTOKEN is ERC20, Ownable {

    address public team;
    address public advisors;
    address public treasury;
    address public tokenLiquidity;
    address public seed;
    address public privateAddress;
    address public publicAddress;
    address public community;
    address public marketing;
    address public partnerships;
    address public ecosystemAndRewards;

    constructor(address _team, address _advisors, address _treasury, address _tokenLiquidity, address _seed, address _privateAddress, address _publicAddress, address _community, address _marketing, address _partnerships, address _ecosystemAndRewards) ERC20("DREAMSTER TOKEN", "$DSTER") {
        _mint(_team, 150000000 * 10 ** decimals());
        _mint(_advisors, 50000000 * 10 ** decimals());
        _mint(_treasury, 150000000 * 10 ** decimals());
        _mint(_tokenLiquidity, 50000000 * 10 ** decimals());
        _mint(_seed, 100000000 * 10 ** decimals());
        _mint(_privateAddress, 50000000 * 10 ** decimals());
        _mint(_publicAddress, 10000000 * 10 ** decimals());
        _mint(_community, 100000000 * 10 ** decimals());
        _mint(_marketing, 20000000 * 10 ** decimals());
        _mint(_partnerships, 20000000 * 10 ** decimals());
        _mint(_ecosystemAndRewards, 300000000 * 10 ** decimals());

        team = _team;
        advisors = _advisors;
        treasury = _treasury;
        tokenLiquidity = _tokenLiquidity;
        seed = _seed;
        privateAddress = _privateAddress;
        publicAddress = _publicAddress;
        community = _community;
        marketing = _marketing;
        partnerships = _partnerships;
        ecosystemAndRewards = _ecosystemAndRewards;
    }

    function burn(uint256 amount) external onlyOwner returns(bool) {
        _burn(msg.sender, amount);
        return true;
    }
}