require 'selenium-webdriver'
driver=Selenium::WebDriver.for:firefox

#enter URL you wish to navigate to.

driver.navigate.to "https://www.google.co.uk/"
driver.manage.window.maximize

# create a wait with a timeout of 15 seconds

wait = Selenium::WebDriver::Wait.new(timeout: 15)


# Click the Gmail link from google.co.uk web page

link = wait.until {
    element = driver.find_element(:link, "Gmail")
    element if element.displayed?
}
link.click()
	
#If test passes. Print success to the terminal.

puts "Test Passed"

#Quitting the browser
driver.quit
