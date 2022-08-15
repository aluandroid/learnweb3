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
}