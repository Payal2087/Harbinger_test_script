*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Resource          ../Resources/Keyword/Functional_Keywords.robot
Resource          ../Resources/Variables/Weather_Forcasting_objects.robot
Resource          ../Resources/Other_Resources/Webdriversync.py

*** Test Cases ***
Get Influenza Type A Percentage for Boston
    [Documentation]    Test case to get percentage of perticular city
    #Step 1 Go to weather.com
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element is Visible    ${Search_City}    timeout=10s    msg=application is not loaded properly
    #Step2 Search City ${City}
    Search_City    Boston
    #Step 3 Select the first suggestion from the drop down
    Select_First_Suggestion
    #Step 4 Go to Cold and Flu from "More Forecasts"
    Select_Specialty_Forcast
    #step 5 Find the percentage value for Influenza Type A
    Retrieve_Percentage_of_specific_Type
