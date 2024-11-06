*** Settings ***
Resource          ../Variables/Weather_Forcasting_objects.robot

*** Keywords ***
Search_City
    [Arguments]    ${City}
    [Documentation]    SearchCity
    Input Text    ${Search_City}    ${City}
    sleep    2s
    Press Keys    ${Search_City}    ENTER

Select_First_Suggestion
    [Documentation]    Select First Suggestion
    Select From List By Index    ${Search_City}    1
    Wait Until Element Is Visible    ${Influenza_Type}

Select_Specialty_Forcast
    [Documentation]    Select Specialty Forcast Cold & Flu
    Click Element    ${More_Forcast_selection}
    Wait Until Element Is Visible    ${More_Forcast_cold_Flu}
    Click Element    ${More_Forcast_selection}
    Wait Until Element Is Visible    ${Influenza_Type}

Retrieve_Percentage_of_specific_Type
    [Documentation]    Retrieve Influenza Type A Percentage
    ${Percentage_Value}=    Get Text    ${Percentage}
    Log To Console    Influenza Type A Percentage: ${Percentage_Value}
