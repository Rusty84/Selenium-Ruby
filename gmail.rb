require 'selenium-webdriver'
driver=Selenium::WebDriver.for:firefox

#enter URL you wish to navigate to.

driver.navigate.to "https://www.google.co.uk/"
driver.manage.window.maximize

# sleep = 5 sec
sleep (2)

# Click the Gmail link from google.co.uk web page

driver.find_element(:link, "Gmail").click()

puts "Test Passed"

#Quitting the browser
driver.quit
