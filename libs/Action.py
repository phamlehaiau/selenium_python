from Base import Base
from selenium.webdriver.common.keys import Keys

class Action(Base):

    def __init__(self):
        super(Action,self).__init__()

    def inputValue(self, element, value):
        '''Fill out a value to element'''
        findelement = self.locateElement(element)
        findelement.send_keys(value)

    def clickElement(self, element):
        '''Click Element'''
        findelement = self.locateElement(element)
        findelement.click()