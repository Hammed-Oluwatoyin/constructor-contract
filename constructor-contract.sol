pragma solidity >=0.7.0 <0.9.0;

/* 
Constructor is a special function using constructor keyword. 
It initializes state variables of a contract. 

Following are key characteristics:

    1. A contract can have only one constructor.

    2. A constructor code is executed once when a contract is created and it is used to initialize contract state.

    3. After a constructor code executed, the final code is deployed to blockchain. 
    This code include public functions and code reachable through public functions. 
    Constructor code or any internal method used only by constructor are not included in final code.

    A constructor can be either public or internal.

    A internal constructor marks the contract as abstract.

    In case, no constructor is defined, a default constructor is present in the contract.
*/

contract Member {
    string name;
    uint256 age;

    constructor(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
        
    }
}

contract Teacher is Member{
    constructor(string memory n, uint256 a) public Member(n, a) {}

    function getName() public view returns (string memory) {
        return name;
    }

     function getAge() public view returns (uint256) {
        return age;
    }
}

/*

Exercise:
1. Create a contract called Base which stores full accessible (inside and outside) data upon deployment 
2. Create a contract called Derived which derives the data from base and runs a function that always outputs the data to the integer 5. 
*/

contract Base {
    uint data;
    constructor(uint _data) public {
        data = _data;
    }
      function getData() public view returns (uint) {
        return data;
    }
}

contract Derived is Base(5) {
    
    function getBaseData() public view returns (uint) {
        return data;
    }
}
