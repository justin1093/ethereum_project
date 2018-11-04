pragma solidity ^0.4.24;

//creating the contract
contract Contest {
	
	//declaring the variables
	string public contestant;

	//declaring constructor
	function Contest() public {
		contestant = "Tom";
	}
}