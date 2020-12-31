pragma solidity ^0.7.0;

function safeTransferOwnership(address newOwner) external onlyOwner {
  require(newOwner!=address(0), "Owned: Address must not be null");
  require(candidate Owner != newOwner, "Owned: Same candidate owner"); 
  candidate Owner = newOwner;
  }

// new owner claims ownership
function claimOwner() external {
  require(candidate Owner == msg.sender, "Owned: Claim ownership failed"); 
  owner = candidate Owner;
  emit OwnerChanged(candidate Owner);
  }
