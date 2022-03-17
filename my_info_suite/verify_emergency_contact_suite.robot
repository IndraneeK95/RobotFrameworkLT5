*** Settings ***
Documentation      This suite handles test case related to emergency contact

Resource    ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser And Navigate To URL
Test Teardown      Close Browser

*** Test Cases ***
Verify Add Emergency Contact Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    partial link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    name=emgcontacts[name]    Sat
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    78787
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    Sat
    Table Should Contain    id=emgcontact_list    78787