require 'selenium-webdriver'
driver=Selenium::WebDriver.for:firefox

#enter URL you wish to navigate to.

driver.navigate.to "https://www.google.co.uk/"
driver.manage.window.maximize

puts "Test Passed"

#Quitting the browser
driver.quit


