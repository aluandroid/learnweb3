// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
contract HelloWeb3_2{
    //变量初始值
    bool public _bol;//false

    string public _string;//""

    int public _int;//0

    uint256 public _uint256;//0

    enum Set{Buy,Hold,sell}
    Set public _set;

    function fi() external{}

    uint[8] public static_arr;//0
    uint[] public dynmaic_arr;//'[]'

    uint[] x =[1,2,3];
    function reset_static_info() external view returns(uint){
       
        uint[8] memory _s = static_arr;
        _s[0]=1;
        return _s[0];  
    }

     uint[8] public _static_arr=[1,2,3];

     function delarr() public {
         delete _static_arr;
     }

     uint256 constant CONSTANT_NUM  = 10;

     function getConstantNum() public pure returns(uint256){
         uint256 _x= CONSTANT_NUM;
         return (_x);
     }
    uint256 public immutable IMMUTABLE_NUM ;
    uint256 public immutable IMMUTABLE_BLOCK;

     constructor(){
        IMMUTABLE_NUM = getImmNum();
        IMMUTABLE_BLOCK = block.number;
     }

     function getImmNum() public pure returns(uint256){
        uint256 unm = 1;
         return (unm);
     }
}