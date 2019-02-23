require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])

driver = Selenium::WebDriver.for(:chrome, options: options)

driver.get('https://www.efl.com/clubs-and-competitions/sky-bet-league-two/clubs/')

teams = driver.find_elements(:class, 'club-grid-name')

teams.each do |club|

  puts club.text.strip
end

driver.quit


