from selenium import webdriver
import sys,os

# from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
#
# cap = DesiredCapabilities().FIREFOX
# cap["marionette"] = False
# browser = webdriver.Firefox()
# browser.get('https://www.python.org/')

# options = webdriver.ChromeOptions()
# options.binary_location = r"C:\Program Files (x86)\Google\Chrome Beta\Application\chrome.exe"
# chrome_path = r"D:\Selenium_Robot\webdriver\chromedriver.exe"
# browser = webdriver.Chrome(chrome_path, chrome_options=options)
# browser.get('https://www.python.org/')
# import sys
# print(sys.path)
start robot -v BROWSER:firefox -d ../../reports -o Single_Form_Demo_out.xml -l Single_Form_Demo_log.html -r Single_Form_Demo.html Single_Form_Demo.robot
start robot -v BROWSER:chrome -d ../../reports -o Checkbox_Demo_out.xml -l Checkbox_Demo_log.html -r Checkbox_Demo.html Checkbox_Demo.robot
call GOTO:EOF
