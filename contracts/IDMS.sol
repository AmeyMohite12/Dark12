pragma solidity ^0.4.19;
/**
 * The contractName contract does this and that...
 */

 
contract IDMS {
	
	
	struct StudentProfile{
		address StudentAddress;
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
	//function getName() public view returns(string){
	//	return (StudentId[1].StudentName,.....);

	//}
}

contract Recruiter {

	struct Recruit {
		//address RecruiterAddress;
		string OrganisationName;
		uint256 Contact;
			

	}
	
	mapping(uint=>Recruit) public RecruiterId;
	uint public RecruiterCount;

	function Recruiter () {
		addRecruiter("Hekko",9192929299);
		
	}


	function addRecruiter(string _name,uint256 _contact) public{
		RecruiterCount++;
		RecruiterId[RecruiterCount] = Recruit(_name,_contact);
	}	
}
