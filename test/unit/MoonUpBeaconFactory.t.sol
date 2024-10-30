// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { MoonUpBaseTest } from "test/BaseTest.t.sol";

contract MoonUpFactoryTest is MoonUpBaseTest{
    
    function afterSetup() internal override {}

    function beforeSetup() internal override {}

    modifier prankUser{
      vm.startPrank(alice);
      _;
      vm.stopPrank();
    }

    modifier createTokenPair{
        vm.prank(alice);
        moonUpfactory.createTokensAndPair{value: CREATION_FEE}
        ("MoonToken", "MTN", "MoonTokenPump.co.za", 0, false);
      _;
    }

     modifier createTokenPairAndBuy{
        vm.prank(alice);
        moonUpfactory.createTokensAndPair{value: 0.0029 ether}
        ("MoonToken", "MTN", "MoonTokenPump.co.za", 0, true);
      _;
    }

    function test_createTokenAndPair() public createTokenPair {}


  function test_withdrawFees() public createTokenPair{
    vm.prank(owner);
    moonUpfactory.withdrawFees();
    assertEq(address(moonUpfactory).balance, 0);
    assertEq(address(owner).balance, CREATION_FEE);

  }

  function test_AnyUserCanSetCreationFee() prankUser public {
    vm.expectRevert();
    moonUpfactory.setCreationFeeTo(0.015 ether);
    
  }

function test_setCreationFeeTo() public {
    uint256 NEW_CREATION_FEE = 0.1 ether;
    address feeToSetter = moonUpfactory.feeToSetter();
    vm.prank(feeToSetter);
    moonUpfactory.setCreationFeeTo(NEW_CREATION_FEE);
    // assertEq(moonUpfactory.CREATION_FEE, NEW_CREATION_FEE);
    
  }

  function test_setCreationFeeSetter() public {
    address feeToSetter = moonUpfactory.feeToSetter();
    vm.prank(feeToSetter);
    moonUpfactory.setCreationFeeSetter(alice);
    assertEq(moonUpfactory.feeToSetter(), alice);

  }

   
}