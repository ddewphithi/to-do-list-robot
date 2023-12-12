*** Settings ***
Resource          ${CURDIR}/../resources/master_resources.robot
Test Setup    Open Browser with Headless

*** Test Cases ***
TC_06:: Delete Completed Task
    [Documentation]    To verify delete completed task item as per expected
    common.Verify Action Tabs
    ${ToDo_List} =    common.Create Task Data List    3
    addItemToDoList.Input Items ToDO List    ${ToDo_List}
    toDoTask.Mark All Task Items to Complete    ${ToDo_List}
    complatedTask.Delete Completed Task Item as per Expect Item    ${ToDo_List}    2

TC_07:: Verify Complated Tasks are Sequence Correctly
    [Documentation]    To verify completed task items are sequnce properly
    common.Verify Action Tabs
    ${ToDo_List} =    common.Create Task Data List    5
    addItemToDoList.Input Items ToDO List    ${ToDo_List}
    toDoTask.Mark Tasks Items to Completed for Checking Sequence    ${ToDo_List}    3
    complatedTask.Verify Completed Tasks are Sequence    ${ToDo_List}    3