# import sys
# from Action import Action
# from selenium import webdriver
# import sys,os

# from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

# temp = Action()
# temp.setUp(sys.argv[1],sys.argv[2])
# temp.openPage("http://www.seleniumeasy.com/test/basic-first-form-demo.html")
# temp.inputValue("user-message","Python Automation Demo")
# temp.tearDown()

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

ECHO text = start robot -v BROWSER:%browser% -d %modified% -o %shortname%_Out.xml -l %shortname%_Log.html -r %shortname%.html %folder%\%fullname%