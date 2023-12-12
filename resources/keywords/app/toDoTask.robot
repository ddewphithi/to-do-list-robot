*** Keywords ***
Verify To Do Task Items
    [Arguments]    ${itemList}
    Click Element    ${a_toDoTask}
    ${countedItems} =    Get Element Count    ${label_itemToDo}
    FOR    ${index}    IN RANGE    0    ${countedItems}
        ${index2} =  Evaluate    ${index}+1
        ${expectedValue} =    Get From List    ${itemList}    ${index}
        Element Text Should Be    //div[@id="todo"]//li[${index2}]/label/span[@id="text-${index2}"]    ${expectedValue}
    END

Delete Task Item as per Expect Item on TO-DO Tab
    [Arguments]    ${itemList}    ${seqItem}
    Click Element    ${a_toDoTask}
    ${index} =  Evaluate    ${seqItem}-1
    Wait Until Element Is Visible    //div[@id="todo"]//li[${seqItem}]/label/span[@id="text-${seqItem}"]
    Element Text Should Be    //div[@id="todo"]//li[${seqItem}]/label/span[@id="text-${seqItem}"]    ${itemList}[${index}]
    Click Element    //div[@id="todo"]//li[${seqItem}]/button[contains(@class,"delete")]
    Element Should Not Be Visible    //span[normalize-space()="${itemList}[${index}]"]

Delete All Task Items on TO-DO Tab
    [Arguments]    ${itemList}
    Click Element    ${a_toDoTask}
    ${countedItems} =    Get Element Count    ${label_itemToDo}
    FOR    ${index}    IN RANGE    0    ${countedItems}
        ${index2} =  Evaluate    ${index}+1
        ${expectedValue} =    Get From List    ${itemList}    ${index}
        Click Element    //div[@id="todo"]//li[1]/button[contains(@class,"delete")]
        Element Should Not Be Visible    //span[normalize-space()="${expectedValue}]"]
    END
    Element Should Not Be Visible    ${label_incomplatedTask}

Mark Task Item to Complete as per Expect Item
    [Arguments]    ${itemList}    ${seqItem}
    Click Element    ${a_toDoTask}
    ${index} =  Evaluate    ${seqItem}-1
    Wait Until Element Is Visible    //div[@id="todo"]//li[${seqItem}]/label/span[@id="text-${seqItem}"]
    Element Text Should Be    //div[@id="todo"]//li[${seqItem}]/label/span[@id="text-${seqItem}"]    ${itemList}[${index}]
    Click Element    //div[@id="todo"]//li[${seqItem}]/label[contains(@class, "mdl-checkbox")]
    Element Should Not Be Visible    //span[normalize-space()="${itemList}[${index}]"]

Mark All Task Items to Complete
    [Arguments]    ${itemList}
    Click Element    ${a_toDoTask}
    ${countedItems} =    Get Element Count    ${label_itemToDo}
    FOR    ${index}    IN RANGE    0    ${countedItems}
        ${index2} =  Evaluate    ${index}+1
        ${expectedValue} =    Get From List    ${itemList}    ${index}
        Click Element    //div[@id="todo"]//li[1]/label[contains(@class, "mdl-checkbox")]
        Element Should Not Be Visible    //span[normalize-space()="${itemList}[${index}]"]
    END
    Element Should Not Be Visible    ${label_incomplatedTask}

Mark Tasks Items to Completed for Checking Sequence
    [Arguments]    ${itemList}    ${seqItem}
    Click Element    ${a_toDoTask}
    ${index} =  Evaluate    ${seqItem}-1
    Wait Until Element Is Visible    //div[@id="todo"]//li[${seqItem}]/label/span[@id="text-${seqItem}"]
    Element Text Should Be    //div[@id="todo"]//li[${seqItem}]/label/span[@id="text-${seqItem}"]    ${itemList}[${index}]
    Click Element    //div[@id="todo"]//li[${seqItem}]/label[contains(@class, "mdl-checkbox")]
    Element Should Not Be Visible    //span[normalize-space()="${itemList}[${index}]"]
    ${index2} =  Evaluate    ${seqItem}-2
    ${index3} =  Evaluate    ${index2}-1
    Click Element    //div[@id="todo"]//li[${index2}]/label[contains(@class, "mdl-checkbox")]
    Element Should Not Be Visible    //span[normalize-space()="${itemList}[${index3}]"]