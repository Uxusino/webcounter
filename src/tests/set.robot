*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter value is set directly it updates
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  user_input    10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa

When counter value is incorrect it does not update
    Go To    ${HOME_URL}
    Click Button  Nollaa
    Click Button  Paina
    Input Text  user_input  string
    Page Should Contain  nappia painettu 1 kertaa