*** Settings ***
Resource          ${CURDIR}/../resources/master_resources.robot
Test Setup    Open Browser with Headless

*** Test Cases ***
TC_02:: Delete Task as per Expect Item
    [Documentation]    To verify delete to-do task items as per expected
    common.Verify Action Tabs
    ${ToDo_List} =    common.Create Task Data List    4
    addItemToDoList.Input Items ToDO List    ${ToDo_List}
    toDoTask.Delete Task Item as per Expect Item on TO-DO Tab    ${ToDo_List}    2

TC_03:: Delete All Task Items
    [Documentation]    To verify delete all to-do task items as per expected
    common.Verify Action Tabs
    ${ToDo_List} =    common.Create Task Data List    2
    addItemToDoList.Input Items ToDO List    ${ToDo_List}
    toDoTask.Delete All Task Items on TO-DO Tab    ${ToDo_List}

TC_04:: Mark Task to Complete as per Expect Item
    [Documentation]    To verify mark task items as per expected then verify on completed tab
    common.Verify Action Tabs
    ${ToDo_List} =    common.Create Task Data List    3
    ${seqItem} =    Set Variable    2
    addItemToDoList.Input Items ToDO List    ${ToDo_List}
    toDoTask.Mark Task Item to Complete as per Expect Item    ${ToDo_List}    ${seqItem}
    complatedTask.Verify Completed Task Item per Expect Item    ${ToDo_List}    ${seqItem}

TC_05:: Mark All Tasks to Complete
    [Documentation]    To verify mark all task items as per expected then verify on completed tab
    common.Verify Action Tabs
    ${ToDo_List} =    common.Create Task Data List    3
    addItemToDoList.Input Items ToDO List    ${ToDo_List}
    toDoTask.Mark All Task Items to Complete    ${ToDo_List}
    complatedTask.Verify Completed Task Items    ${ToDo_List}