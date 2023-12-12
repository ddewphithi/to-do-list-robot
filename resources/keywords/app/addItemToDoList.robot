*** Keywords ***
Input Items ToDO List
    [Arguments]    ${itemList}
    ${lenght} =  Get Length    ${itemList}
    Wait Until Element Is Visible    ${txt_addItem}
    FOR    ${index}    IN RANGE    0    ${lenght}
        Input Text    ${txt_addItem}    ${itemList}[${index}]
        Click Element    ${btn_addItem}
    END

Verify Add Item Tab
    Wait Until Element Is Visible    ${txt_addItem}
    Wait Until Element Is Visible    ${btn_addItem}