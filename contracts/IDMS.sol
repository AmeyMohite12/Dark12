pragma solidity ^0.4.19;
/**
 * The contractName contract does this and that...
 */

 
contract IDMS {
	
	
	struct StudentProfile{
		string StudentName;
		uint Age;
		uint256 birth_date;
		uint CGPA;
		string Institute;
		uint256 Contact;		

		 



	}

	mapping(uint => StudentProfile)public StudentId;
	uint public StudentCount;


	constructor () public {	
		addStudent("Amy",21);
		addStudent("Adams",22);
	}


	function addStudent(string _name, uint _age) public
	{
		StudentCount++;
		//StudentId[StudentCount] = StudentProfile(_name,_age);
	}


	







	// getter functions
	function getName() public view returns(string){
		return StudentId[1].StudentName;

	}
}