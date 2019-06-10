require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])

driver = Selenium::WebDriver.for(:chrome, options: options)

driver.get('https://www.bbc.co.uk/sport/football/gossip')

puts driver.title

element = driver.find_elements(:id, 'story-body')


element .each do |gossip| 


puts   "#{gossip.text.strip}\n"
end

driver.quit
