*** Settings ***
Library  chromedriversync.py
Library  Chromedriver

*** Variable ***
${Url}   https://www.google.com    

 
*** Test Case ***
Login Test
[Tags]  Testcase
${chromedriver_path}=   chromedriversync.Get Chromedriver Path
Create Webdriver    chrome   executable_path=  ${chromedriver_path}  
${Url} 
${Search}
