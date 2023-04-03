*** Settings ***

Library                 QWeb

*** Keywords ***

Home
    [Tags]            home
    [Documentation]   Set the application state to the shop home page.
    GoTo              https://qentinelqi.github.io/shop/
