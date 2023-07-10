
// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;

// EVM, Ethereum Virtual Machine
// Avalanche, Fantom, Polygon

// 合约
contract SimpleStroge{
    // boolean, uint(无符号整型), int（有符号整型）, address（0x010412BD9eC3170Cf3B0c8CF2224Da7963E44848）, bytes,string
    // 默认为0
    uint256 public favoriteNumber;
    // 对象
    struct People {
        string name;
        uint256 favoriteNumber;
    }
    // 类似js New 函数
    // Person public person = Person({
    //     favoriteNumber:5,
    //     name:"Jhonson"
    // });

    // 数组 [长度] 
    uint256[] public list;
    // 对象数组
    People[] public peoples;
    // 字典
    mapping (string=>uint256) public nameToFavoriteNumber;

    // 函数
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    // 视图功能，只能查看不消耗gas费 只是从链上获取数据 view pure 不修改区块状态
    function retrireve() public view returns(uint256){
        return favoriteNumber;
    }
    
    // 添加uint256类型
    function addList(uint256 i) public{
        list.push(i);
    }

    // 添加对象 memory 在合约中的本地内存变量。它的生命周期很短，当函数执行结束后就销毁了
    // stack, memory, storage, colldata, code, logs
    function addPerson(string memory _name, uint256  _favoriteNumber) public{
        // People memory newPerson = People({
        //     favoriteNumber:_favoriteNumber,
        //     name:_name
        // });
        peoples.push(People(_name,_favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


}

// 合约地址：0xf8e81D47203A594245E36C48e151709F0C19fBe8
