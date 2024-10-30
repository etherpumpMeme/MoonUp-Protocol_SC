// SPDX-License-Identifier: UNLICENSED

interface IMoonUpBeaconFactory {

    function withdrawFees() external;

    function setCreationFeeTo(uint256 _feeTo) external;
    function setCreationFeeSetter(address _feeToSetter) external;


    function getMoonUpTokenPair(address Token) external view returns (address);

    function allPairsLength() external view returns (uint);
}