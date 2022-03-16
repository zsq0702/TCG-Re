// This code contains deliberate errors. Do not use.

pragma solidity ^0.4.26;

contract BadAuction {

    address highestBidder;
    uint highestBid;

    function bid(uint8 _value) public payable {
        require(msg.value >= highestBid);

        if (highestBidder != 0 && _value <= 100) {
            highestBidder.transfer(highestBid);
        }

        highestBidder = msg.sender;
        highestBid = msg.value;
    }
}
