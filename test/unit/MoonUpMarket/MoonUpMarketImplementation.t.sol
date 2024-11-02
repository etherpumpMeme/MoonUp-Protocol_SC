// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import { MoonUpBaseTest } from "test/BaseTest.t.sol";
import { IWETH } from "src/MoonUpMarket/interfaces/IWETH.sol";
import { IMoonUpMarketImplementation } from "src/MoonUpMarket/interfaces/IMarketImplementation.sol";
import { IERC20} from "src/MoonUpMarket/interfaces/IERC20.sol";

error MoonUpMarket__CANNOT_INITIALIZE_TWICE();

contract MoonUpMarketTest is MoonUpBaseTest{
    address MoonUpProxy;
    address MoonUpErc20;
    uint256 private PERCENTAGE_HOLDING_PER_USER = (1_000_000_000 * 1e18) * 3 / 100;

    function afterSetup() internal override {
        vm.prank(alice);
        (MoonUpErc20, MoonUpProxy) = moonUpfactory.createTokensAndPair{value: CREATION_FEE}("MoonUP", "MUP", "", 0, false);
    }

    function beforeSetup() internal override {}

    function test_MoonUpMarket_Initialize() public {
        //test if the contract is initialized
        vm.prank(alice);
        bytes memory expectedRevert = abi.encodeWithSelector(MoonUpMarket__CANNOT_INITIALIZE_TWICE.selector);

        vm.expectRevert(expectedRevert);
        IMoonUpMarketImplementation(MoonUpProxy).initialize(MoonUpErc20, IWETH(WETH), nfpm, uniswapFactory, 1000);

        //test if initialized correctly
        vm.assertEq(address(IMoonUpMarketImplementation(MoonUpProxy).token()), MoonUpErc20);
    }

    function test_User_Can_Buy() public {
        //test if user can buy
        vm.prank(alice);
        IMoonUpMarketImplementation(MoonUpProxy).buy{value: 0.003 ether}(1);
        vm.assertTrue(IERC20(MoonUpErc20).balanceOf(alice) > 0);
        //vm.assertTrue(IWETH(WETH).balanceOf(address(MoonUpProxy)) > 0);
    }



    function test_getPrice() public view {
        uint256 fee = (0.003 ether * 10)/ 1000;
        uint256 buyAmount = 0.003 ether - fee;
        uint256 amount = IMoonUpMarketImplementation(MoonUpProxy).getTokenQoute(buyAmount);
        vm.assertTrue (amount <= PERCENTAGE_HOLDING_PER_USER);
        vm.assertTrue(30_000_000 * 1e18 >= 22846153842270000000000000);
    }

    function test_TotalPrice() public {
        
    }
    
}
