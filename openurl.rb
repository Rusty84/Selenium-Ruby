require 'selenium-webdriver'
driver=Selenium::WebDriver.for:firefox
driver.navigate.to "https://www.google.co.uk/"
driver.manage.window.maximize

# sleep = 5 sec
sleep (5)

puts "Test Passed"

#Quitting the browser
driver.quit



