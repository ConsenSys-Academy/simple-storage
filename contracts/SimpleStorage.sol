pragma solidity >=0.4.0 <0.6.0;

contract SimpleStorage {
    uint storedData;

    event LogDataUpdate(uint value, address sender);

    function set(uint x) public {
        storedData = x;
        emit LogDataUpdate(x, msg.sender);
    }

    function get() public view returns (uint) {
        return storedData;
    }
}