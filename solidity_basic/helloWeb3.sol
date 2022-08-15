// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract HelloWeb3{
    //字符串类型
    string public _str = "Hello Web3";

    //布尔类型
    bool public _bo1 = false;
    bool public _bo2 = !_bo1;
    bool public _bo3 = _bo1&&_bo2;
    //整数类型
    uint256 public num1 ;
    uint256 public num2 = 2**2;

    //地址
    address public _address = 0x61F92346129B08310751d9EcF31be273EF784baA;
    address payable public _address1 = payable(_address);//可查余额 转账
    uint256 public balances =  _address1.balance;

    enum Set { Buy, Hold, Sell }
    Set _str1 = Set.Buy;

    function enumToUint() external view returns(uint){
        return uint(_str1);
    }


    function addNum() external view returns(uint){
        return num1+2;
    }

        // payable: 递钱，能给合约支付eth的函数
    function minusPayable() external payable returns(uint256 balance) {
        // minus();    
        balance = address(this).balance;
    }


    function returnMultiple() external pure returns(uint256,bool,uint256[3] memory){
        return (1,false, [uint256(1),2,5]);
    }

    function returnNamed() external pure  returns(uint256 num,bool bol,uint256[3] memory me){
        num=2;
        bol=false;
        me=[uint256(1),3,5];
    }


    uint[] x =[1,2,3];

    function Fstorage() public{
        uint[] storage _x = x;
        _x[0]=256;
    }

    function gobal()external view returns(address, uint, bytes memory){
        address sender = msg.sender;
        uint basefee = block.basefee;
         bytes memory data = msg.data;
         return(sender,basefee,data);
    }

    struct Student{
        uint256 id;
        uint256 score;
    }

    Student student;

    function setStudentInfo() external{
        Student storage _student = student;
        _student.id=999;
        _student.score = 888;
    }

    mapping(uint=>address) public mapAddress;

    function writeMap(uint key,address mapaddress)public{
        mapAddress[key]=mapaddress;
    }

}