*** Settings ****
Resource    ${CURDIR}/../master_resources.robot

*** Keywords ***
Open Browser with Headless
   ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Open Browser    ${URL}    Chrome    options=${chrome_options}

Verify Landing Page
    Wait Until Element Is Visible    ${label_titlePage}

Verify Action Tabs
    Wait Until Element Is Visible    ${a_addItem}
    Wait Until Element Is Visible    ${a_toDoTask}
    Wait Until Element Is Visible    ${a_complated}

Create Task Data List
    [Arguments]    ${noOfTask}
    @{ToDo_List}    Create List
    FOR    ${index}    IN RANGE    0    ${noOfTask}
        ${index2} =  Evaluate    ${index}+1
        ${item} =    Set Variable    taskNo.${index2}
        Append To List    ${ToDo_List}    ${item}
    END
    [Return]    ${ToDo_List}