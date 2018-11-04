pragma solidity ^0.4.24;

//creating the contract
contract Contest {
	
	//creating structure to model the contestant
	struct Contestant {
		uint id;
		string name;
		uint voteCount;
	}

	//use mapping to get contestant details
	mapping (uint => Contestant) public contestant;

	//add a public state variable to keep track of contestant count
	uint public contestantCount;

	//add constructor
	constructor() public {
		addContestant("Tom");
		addContestant("Jerry");
	}
	
	//add a function to add contestants
	function addContestant (string _name) private {
		contestantCount ++;
		contestant[contestantCount] = Contestant(contestantCount, _name, 0);	
	}	

} 