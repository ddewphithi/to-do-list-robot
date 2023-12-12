*** Settings ***
Resource          ${CURDIR}/../resources/master_resources.robot
Test Setup    Open Browser with Headless

*** Test Cases ***
TC_01:: Add TO DO Task and verify 
    [Documentation]    To verify adding to-do items and then verity the to-do list items on to-do tasks tab
    common.Verify Action Tabs
    addItemToDoList.Verify Add Item Tab
    ${ToDo_List} =    common.Create Task Data List    1
    addItemToDoList.Input Items ToDO List    ${ToDo_List}
    toDoTask.Verify To Do Task Items    ${ToDo_List}