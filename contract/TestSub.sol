//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TestSub{

    event TransferEvent(address from , address to , uint amount);
    event ChangeName(string name);



string public name = "Asha";
uint public id = 1;

function transfer(address payable to ) public payable{

    to.transfer(msg.value);
    emit TransferEvent(msg.sender,to ,msg.value);
}

function changename(string memory _name) public {
    name= _name;
    emit ChangeName(name);

}
function changeid(uint _id) public {
    id= _id;
    

}
}