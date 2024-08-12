// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bidder {
    string public name;
    uint public bidAmount;
    bool public eligible;
    uint public minBid;

    event BidderRegistered(string name, uint bidAmount, bool eligible);
    event EligibilityDetermined(bool eligible);

    constructor(uint _minBid) {
        minBid = _minBid;
    }

    // Function to set the name of the bidder
    function setName(string memory _name) public {
        name = _name;
    }

    // Function to set the bid amount and check eligibility
    function setBidAmount(uint _bidAmount) public {
        bidAmount = _bidAmount;
        determineEligibility();

        // Revert if the bidder is not eligible
        require(eligible, "Bid amount is too low. Not eligible to bid.");
    }

    // Function to determine eligibility
    function determineEligibility() internal {
        eligible = (bidAmount >= minBid);
        emit EligibilityDetermined(eligible);
    }

    // Function to register a bidder
    function registerBidder(string memory _name, uint _bidAmount) public {
        setName(_name);
        setBidAmount(_bidAmount);  // This will revert if not eligible
        emit BidderRegistered(name, bidAmount, eligible);
    }
}
