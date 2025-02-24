// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

//store in to the blockchain without accessing and without change the value
//uses as output
// blockchain data goes in to transaction logs
// indexed-> only used on 3 parameter of the event

contract Events{

    event balance(address account,string message, uint value);

    function setData(uint _val) public {
        emit balance(msg.sender, "has value", _val);
    }

/* logs:[
	{
		"from": "0xE5f2A565Ee0Aa9836B4c80a07C8b32aAd7978e22",
		"topic": "0x3028aee09e5f7149e98b3f7f8faa7e2cc5b353de720db250726b7c64d38b5f9c",
		"event": "balance",
		"args": {
			"0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
			"1": "has value",
			"2": "99",
			"account": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
			"message": "has value",
			"value": "99"
		}
	}
] */

}

contract ChatApp{

    event chat(address indexed from, address to, string message);

    function sendMessage(address _to, string memory _message) public {
        emit chat(msg.sender, _to, _message);
    }

/* logs [
	{
		"from": "0x652c9ACcC53e765e1d96e2455E618dAaB79bA595",
		"topic": "0x2f6ff1dea5e6d5466e44de328c6f4518b6da78f98b2b55273306901a3f0b346c",
		"event": "chat",
		"args": {
			"0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
			"1": "0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db",
			"2": "hi im suraj",
			"from": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
			"to": "0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db",
			"message": "hi im suraj"
		}
	}
] */
}