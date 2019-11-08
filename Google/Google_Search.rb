require "selenium-webdriver"

ARGV.each do|a|
  puts "Argument: #{a}" "Argument: #{a}"
end

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the Google URL
driver.navigate.to "http://www.google.co.uk"

# sleep = 2 sec
sleep (2)

# create a wait with a timeout of 15
wait = Selenium::WebDriver::Wait.new(timeout: 15)

input = wait.until {
    element = driver.find_element(:name, "q")
    element if element.displayed?
}
input.send_keys(ARGV[0])
input.submit()


