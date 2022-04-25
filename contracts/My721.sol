// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract My721 is ERC721 {

 
  uint256 public tokenId;

  mapping(uint256 => string) private _tokenURIs;

  constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
 
  }

  function mint(string memory _tokenURI) external {
    _mint(msg.sender, tokenId);
    _tokenURIs[tokenId] = _tokenURI;
    tokenId++;
  }


}
