#Automative test - Krzysztof Jasinski

require 'selenium-webdriver'
require 'rspec'

#declaring browser -> firefox
driver = Selenium::WebDriver.for :firefox


#opening testing page
driver.navigate.to "https://form.jotform.com/200843963230350"


class Test_page

	def initialize(driver)
        	@driver = driver

	end

	def opening_page

		#pressing button 'next' on starting screen
		o_page = @driver.find_element(:id, "jfCard-welcome-start")
		o_page.click
	end

	def drag_drop

		#pressing button 'next' on drag&drop
		dd_page = @driver.find_element(:xpath, "/html/body/div[5]/form/ul/li[1]/div/div/div[3]/button[2]")
		dd_page.click
	end
		
	def signature_page

		#making signature (page 3)
		signature_field = @driver.find_element(:xpath, "/html/body/div[5]/form/ul/li[2]/div/div/div[2]/div[3]/div/div[1]/div[2]/div/canvas")
		signature_field.click

		##pressing button 'next' on signature page
		sig_next = @driver.find_element(:xpath, "/html/body/div[5]/form/ul/li[2]/div/div/div[3]/button[2]")
		sig_next.click


	end

	def phone_number(area_code, phone)

		#selecting field AREA CODE on PAGE 3 and putting DATA there
		arcod_button = @driver.find_element(:xpath, '//*[@id="input_9_area"]')
		arcod_button.send_keys(area_code)

		#selecting field PHONE BUTTON on PAGE 3 and putting DATA there
		phone_button = @driver.find_element(:xpath, '//*[@id="input_9_phone"]')
		phone_button.send_keys(phone)
	
		#pressing button next on phone number - page 3
		phone_next = @driver.find_element(:xpath, '/html/body/div[5]/form/ul/li[3]/div/div/div[3]/button[2]')
		phone_next.click

	end

	def security
		
		#pressing button next on security question - PAGE 4
		sec_button = @driver.find_element(:xpath, '/html/body/div[5]/form/ul/li[4]/div/div/div[3]/button[2]')
		sec_button.click

	end

	def email
		
		#pressing button next on email & submission - PAGE 5
		submit_button = @driver.find_element(:xpath, '/html/body/div[5]/form/ul/li[5]/div/div/div[3]/button[3]')
		submit_button.click

	end


end


area_code = 0000000000000
phone= 11111111111

Test = Test_page.new(driver)
Test.opening_page
Test.drag_drop
Test.signature_page
Test.phone_number(area_code,phone)
Test.security
Test.email

driver.quit