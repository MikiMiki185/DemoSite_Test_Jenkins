*** Settings ***
Library           DatabaseLibrary
Library           OperatingSystem

Suite Setup     Connect to Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect from Database

*** Variables ***
${DBName}       classicmodels
${DBUser}       root
${DBPass}       MySQL#12$43^
${DBHost}       127.0.0.1
${DBPort}       3306

*** Test Cases ***
#Create person table
#    ${output}=  execute sql string    Create table newperson(id integer, first_name varchar(255), last_name varchar(255));
#    log to console    ${output}
#    should be equal as strings    ${output}     None

#Insert Data in person Table
     #Single record
#    ${output}=  execute sql string    Insert into newperson values(1, "Michaerl", "Canaddy");
#    log to console    ${output}
#    should be equal as strings    ${output}     None

#Insert Data in person Table
#    #multiple record
#    ${output}=  execute sql script      ./TestData/insertData.sql
#    log to console    ${output}
#    should be equal as strings    ${output}     None

Check John record present in newperson Table
    check if exists in database     select id from newperson where first_name = 'John';

Check Jio record not present in newperson Table
    check if not exists in database     select id from newperson where first_name = 'Jio';

Check newperson Table exsist in mydb database
    table must exist    newperson

Verify Row Count is Equal to value
    row count is equal to x    select * from newperson where first_name = 'John';    1

Verify Row Count is Grater than value
    row count is greater than x    select * from newperson where first_name = 'John';   0

Verify Row Count is less than value
    row count is less than x    select * from newperson where first_name = 'John';   2

#Update record in person table
#    ${output}=    execute sql string    update newperson set first_name = "Miki" where id = 5;
#    log to console    ${output}
#    should be equal as strings    ${output}     None

Retrive Records from newperson table
    @{queryResults}=    query   Select * from newperson;
    log to console  many @{queryResults}

Delete Records from newperson table
     ${output}=    execute sql string    Delete from newperson;
     should be equal as strings    ${output}    None
