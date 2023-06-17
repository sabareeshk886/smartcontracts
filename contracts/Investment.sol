pragma solidity ^0.8.12;

contract Investment{

struct transaction{
         uint investmentid;
	     uint companyid;
	     uint userid;
	     uint amount;
         string date;
  }
transaction [] alltrans;
uint total=0;

function addTransaction(uint investmentida,uint companyida,uint userida, uint amounta,string memory datea) public{
	transaction memory e = transaction(investmentida,companyida,userida,amounta,datea);
	alltrans.push(e);
 
  }
function viewTransaction(uint investmentid) public view returns(uint,uint,uint,string memory){
	uint i;
	    for(i=0;i<alltrans.length;i++){
			transaction memory e = alltrans[i];
			if(e.investmentid==investmentid)
				{
					return(e.companyid,e.userid,e.amount,e.date);
				}

 
                }
		return(0,0,0,"0");
  }
}
