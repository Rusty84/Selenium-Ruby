require 'selenium-webdriver'
require "rspec"

$expected_success_text = 'Form filled out successfully'

def submit_form(driver)

driver.find_element(id:'et_pb_contact_name_0').send_keys("Russell")
driver.find_element(id:'et_pb_contact_message_0').send_keys("This is a test")
driver.find_element(:class, 'et_pb_contact_submit').click
end


def get_success_text(driver)

wait = Selenium::WebDriver::Wait.new(timeout: 30)
wait.until { driver.find_element(:class, 'et-pb-contact-message').displayed? }
text = driver.find_element(:class, 'et-pb-contact-message')
success_text = text.text
end

describe "automating a form" do
	it "submits a form" do
		driver = Selenium::WebDriver.for :chrome
		driver.navigate.to "https://www.ultimateqa.com/filling-out-forms/"
		submit_form(driver)
		actual_success_text = get_success_text(driver)
		expect(actual_success_text).to eql($expected_success_text)
end
end
