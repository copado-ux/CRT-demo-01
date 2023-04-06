# Tip: Everything that starts with # is a guidance for you and will not get executed.

*** Settings ***

Resource                ../resources/common.robot
Documentation           Test suite for CRT starter.
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

# Tip: The Settings section is where you define test suite level configuration.
#      Suite Setup and Teardown are actions that happen before and after a test suite run.
#      For first time users, we don't recommend to change them.
#      You may change chrome to firefox should you wish to test your application on Firefox.

*** Test Cases ***

# Tip: Test cases start from here. The structure of a test case is as follows:
#      Name of the test
#          [Documentation]    A short explanation of the test.
#          Test steps
#
#      A new test case starts from the beginning of the line. Each test step starts with four
#      spaces, followed by a QWord, at least four spaces, and its arguments.

Test the home page
    [Tags]            homepage
    [Documentation]   Go to the web shop, and verify that the slogan text appears on the page.
    GoTo              https://qentinelqi.github.io/shop/
    VerifyText        Find your spirit animala

Check the navigation menu items
    [Tags]            navigation
    [Documentation]   Go to the shop homepage and verify the menu items.
    GoTo              https://qentinelqi.github.io/shop/
    VerifyText        Products
    VerifyText        Our Story
    VerifyText        Contact

Shop for products
    [Tags]            shop
    [Documentation]   Select a product, verify details on the page, add the product to the cart and continue shopping.
    GoTo              https://qentinelqi.github.io/shop/
    ClickText         Sacha the Deer
    VerifyText        Slim Fit, 5oz 100% Cotton T-Shirt.
    ClickText         Add to cart
    VerifyText        Cart summary
    VerifyText        Sacha the Deer
    ClickText         Continue shopping

Continue shopping
    [Tags]            shop
    [Documentation]   Add a second product to the cart.
    AppState          Home
    ClickText         Gavin the Tiger
    VerifyText        His favorite meal is chickpea salad with a lemon juice dressing.
    VerifyText        $9.00
    ClickText         Add to cart
    ClickText         Continue shopping
    VerifyText        Fur, Inc.
