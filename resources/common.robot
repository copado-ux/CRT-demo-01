*** Settings ***

Library                 QWeb

*** Keywords ***

Home
    [Tags]            homepage
    [Documentation]   Set the application state to the shop home page.
    GoTo              https://qentinelqi.github.io/shop/
