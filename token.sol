// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract NewToken {

    string public Name = "Shashank Kumar";
    string public Abbrv = "SK";
    uint256 public totalAmount = 200;

    mapping(address => uint256) public balances;

    function Mint(address _receiver, uint256 _quantity) public {

        totalAmount += _quantity;
        balances[_receiver] += _quantity;
    }

    function Burn(address _holder, uint256 _quantity) public {

        if (balances[_holder] >= _quantity) {
            totalAmount -= _quantity;
            balances[_holder] -= _quantity;
        }
    }
}


