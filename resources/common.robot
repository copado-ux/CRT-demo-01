*** Settings ***

Library                 QWeb

*** Keywords ***

Home
    [Documentation]     Set the application state to the shop home page.
    GoTo                https://qentinelqi.github.io/shop/

# Pro Tip: In this Keywords section, you could combine QWords to make your own keywords using
#          the structure shown above. The pro way is to define them in a separate file and import
#          that file under Settings.
