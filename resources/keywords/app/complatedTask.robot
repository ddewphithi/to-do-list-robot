*** Keywords ***
Verify Completed Task Item per Expect Item
    [Arguments]    ${itemList}    ${seqItem}
    Click Element    ${a_complated}
    ${index} =  Evaluate    ${seqItem}-1
    ${expectedValue} =    Get From List    ${itemList}    ${index}
    ${text} =    Get Text    //ul[@id="completed-tasks"]//li[1]/span
    ${completedTask_txt} =    Replace String    ${text}    done    \
    Should Be Equal    ${completedTask_txt}    ${expectedValue}

Verify Completed Task Items
    [Arguments]    ${itemList}
    Click Element    ${a_complated}
    ${countedItems} =    Get Element Count    ${label_itemCompleted}
    FOR    ${index}    IN RANGE    0    ${countedItems}
        ${index2} =  Evaluate    ${index}+1
        ${expectedValue} =    Get From List    ${itemList}    ${index}
        ${text} =    Get Text    //ul[@id="completed-tasks"]//li[index2]/span
        ${completedTask_txt} =    Replace String    ${text}    done    \
        Should Be Equal    ${completedTask_txt}    ${expectedValue}
    END
    Click Element    ${a_toDoTask}
    Element Should Not Be Visible    ${label_incomplatedTask}


Delete Completed Task Item as per Expect Item
    [Arguments]    ${itemList}    ${seqItem}
    Click Element    ${a_complated}
    ${index} =  Evaluate    ${seqItem}-1
    ${expectedValue} =    Get From List    ${itemList}    ${index}
    Click Element    //ul[@id="completed-tasks"]//li[${seqItem}]/button[contains(@class,"delete")]
    Element Should Not Be Visible    //span[normalize-space()="done${itemList}[${index}]"]

Verify Completed Tasks are Sequence
    [Arguments]    ${itemList}    ${seqItem}
    Click Element    ${a_complated}
    # Check Item seq 1
    ${index} =  Evaluate    ${seqItem}-1
    ${expectedValue} =    Get From List    ${itemList}    ${index}
    ${text} =    Get Text    //ul[@id="completed-tasks"]//li[1]/span
    ${completedTask_txt} =    Replace String    ${text}    done    \
    Should Be Equal    ${completedTask_txt}    ${expectedValue}
    # Check Item seq 2
    ${index2} =  Evaluate    ${seqItem}-3
    ${expectedValue} =    Get From List    ${itemList}    ${index2}
    ${text} =    Get Text    //ul[@id="completed-tasks"]//li[2]/span
    ${completedTask_txt} =    Replace String    ${text}    done    \
    Should Be Equal    ${completedTask_txt}    ${expectedValue}