*** Variables ***
${URL}   https://abhigyank.github.io/To-Do-List/

*** Settings ***

### LIBRARIES
Library    SeleniumLibrary
Library    Collections
Library    String

###  KEYWORDS
Resource    ${CURDIR}/../resources/keywords/common.robot
Resource    ${CURDIR}/../resources/keywords/app/addItemToDoList.robot
Resource    ${CURDIR}/../resources/keywords/app/toDoTask.robot
Resource    ${CURDIR}/../resources/keywords/app/complatedTask.robot

###  LOCATORS
Resource     ${CURDIR}/../resources/locators/toDoList.robot