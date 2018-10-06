from selenium import webdriver
from selenium.webdriver.common.by import By

import re,os

# General configuration
# firefoxdriver : Firefox driver path
# chromedriver  : Chrome driver path
root_path = os.path.abspath(os.path.join(os.path.dirname(__file__),".."))
config_path = "%s\generals\config.py" % root_path
exec(open(config_path).read())

class Base(object):

    def __init__(self):
        self.driver = None

    def backPage(self):
        '''Back to previous page'''
        try:
            self.driver.back()
        except:
            print("Can not back to next page")

    def elementClassName(self, element):
        '''Find Element By Class Name'''
        try:
            findelement = self.driver.find_element(By.CLASS_NAME, element)
            return findelement
        except:
            return False

    def elementCssSelector(self, element):
        '''Find Element By CSS Selector'''
        try:
            findelement = self.driver.find_element(By.CSS_SELECTOR, element)
            return findelement
        except:
            return False

    def elementID(self, element):
        '''Find Element By ID'''
        try:
            findelement = self.driver.find_element(By.ID, element)
            return findelement
        except:
            return False

    def elementLinkText(self, element):
        '''Find Element By Link Text'''
        try:
            findelement = self.driver.find_element(By.LINK_TEXT, element)
            return findelement
        except:
            return False

    def elementName(self, element):
        '''Find Element By Name'''
        try:
            findelement = self.driver.find_element(By.NAME, element)
            return findelement
        except:
            return False

    def elementPartialLinkText(self, element):
        '''Find Element By Partial Link Text'''
        try:
            findelement = self.driver.find_element(By.PARTIAL_LINK_TEXT, element)
            return findelement
        except:
            return False

    def elementTagName(self, element):
        '''Find Element By Tag Name'''
        try:
            findelement = self.driver.find_element(By.TAG_NAME, element)
            return findelement
        except:
            return False

    def elementXPATH(self, element):
        '''Find Element By XPATH'''
        try:
            findelement = self.driver.find_element(By.XPATH, element)
            return findelement
        except:
            return False

    def forwardPage(self):
        '''Forward to next page'''
        try:
            self.driver.forward()
        except:
            print("Can not forward to next page")

    def getChecked(self, element):
        '''Shows that element is checked or unchecked'''
        try:
            statuselement = self.locateElement(element).get_attribute('checked')
            return statuselement
        except Exception as err:
            print(str(err))

    def getEnable(self, element):
        '''Shows that element is enabled or disabled'''
        try:
            statuselement = self.locateElement(element).is_enabled()
            return statuselement
        except Exception as err:
            print(str(err))

    def getMultiselected(self, element):
        '''Get multiple selection property'''
        try:
            statuselement = self.locateElement(element).get_property("multiple")
            return statuselement
        except Exception as err:
            print(str(err))

    def getPageTitle(self):
        '''Get title of current web page'''
        try:
            if self.driver.title != "":
                return self.driver.title
            else:
                raise Exception
        except:
            print("Invalid Page Title")

    def getSelected(self, element):
        '''Shows that element is selected or deselected'''
        try:
            statuselement = self.locateElement(element).is_selected()
            return statuselement
        except Exception as err:
            print(str(err))

    def getText(self, element):
        '''Get text of an element'''
        try:
            findelement = self.locateElement(element)
            if findelement.text != "":
                return findelement.text
            else:
                raise Exception
        except:
            print("There is no text")

    def getURL(self):
        '''Get URL of current web page'''
        try:
            if self.driver.current_url != "about:blank":
                return self.driver.current_url
            else:
                raise Exception
        except:
            print("Invalid URL")

    def getValueAttribute(self, element):
        '''Get "Value" Attribute of an element'''
        try:
            findelement = self.locateElement(element)
            return findelement.get_attribute("value")
        except:
            print("There is no value attribute")

    def locateElement(self, element):
        '''Locating Element'''
        try:
            if self.elementID(element):
                return self.elementID(element)
            elif self.elementName(element):
                return self.elementName(element)
            elif self.elementClassName(element):
                return self.elementClassName(element)
            elif self.elementTagName(element):
                return self.elementTagName(element)
            elif self.elementLinkText(element):
                return self.elementLinkText(element)
            elif self.elementPartialLinkText(element):
                return self.elementPartialLinkText(element)
            elif self.elementXPATH(element):
                return self.elementXPATH(element)
            elif self.elementCssSelector(element):
                return self.elementCssSelector()
            else:
                raise Exception
        except Exception as err:
            print("Element %s doesn't exist" % element)

    def openPage(self, url):
        '''Open a test page'''
        try:
            self.page = url
            self.driver.get(self.page)
        except Exception as err:
            print(str(err))

    def setUp(self,browser='firefox',delaytime=10):
        '''Set up test browser'''
        self.browser = browser
        try:
            self.browser = self.browser.lower()

            if self.browser == "chrome":
                self.driver = webdriver.Chrome()
            else:
                self.driver = webdriver.Firefox()
        except Exception as err:
            pattern = r"Message: \'(.*)\' executable needs to be in PATH"
            errmsg = str(err)
            if re.search(pattern, errmsg) != None:
                if (self.browser == "chrome"):
                    self.driver = webdriver.Chrome(executable_path=chromedriver)
                else:
                    self.driver = webdriver.Firefox(executable_path=firefoxdriver)
        finally:
            self.driver.maximize_window()
            self.driver.implicitly_wait(delaytime)

    def tearDown(self):
        '''Close the current browser'''
        try:
            self.driver.quit()
        except Exception as err:
            print(str(err))