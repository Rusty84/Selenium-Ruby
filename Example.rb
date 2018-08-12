require 'selenium-webdriver'
driver=Selenium::WebDriver.for:firefox
driver.navigate.to "http://www.mortgagecalculator.org/"
driver.manage.window.maximize
dropdown_month=driver.find_element(:name,'param[start_month]')

selection=dropdown_month.find_elements(:tag_name,"option").detect {
    |selection| selection.attribute('text').eql? "Jan"
    
}
selection.click

# sleep = 5 sec
sleep (5)

puts "Test Passed"

#Quitting the browser
driver.quit



