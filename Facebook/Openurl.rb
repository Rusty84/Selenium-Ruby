require 'selenium-webdriver'
driver=Selenium::WebDriver.for:firefox

#enter URL you wish to navigate to.

driver.navigate.to "https://www.facebook.com"
driver.manage.window.maximize

#Print test passed if successful

puts "Test Passed"

#Quitting the browser
driver.quit
