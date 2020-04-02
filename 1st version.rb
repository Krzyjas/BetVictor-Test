require 'selenium-webdriver'
require 'rspec'


driver = Selenium::WebDriver.for :firefox

#opening testing page
driver.navigate.to "https://form.jotform.com/200843963230350"

#pressing button next starting screen
fpbutton = driver.find_element(:id, "jfCard-welcome-start")
fpbutton.click

#pressing button next on PAGE 1
spbutton = driver.find_element(:xpath, "/html/body/div[5]/form/ul/li[1]/div/div/div[3]/button[2]")
spbutton.click

#pressing field SIGNATURE on PAGE 2
tpbutton = driver.find_element(:xpath, "/html/body/div[5]/form/ul/li[2]/div/div/div[2]/div[3]/div/div[1]/div[2]/div/canvas")
tpbutton.click

#pressing button next on PAGE 2
fopbutton = driver.find_element(:xpath, "/html/body/div[5]/form/ul/li[2]/div/div/div[3]/button[2]")
fopbutton.click

#selecting field AREA CODE on PAGE 3 and putting DATA there
arcodbutton = driver.find_element(:xpath, '//*[@id="input_9_area"]')
arcodbutton.send_keys "23400"

#selecting field PHONE BUTTON on PAGE 3 and putting DATA there
phonebutton = driver.find_element(:xpath, '//*[@id="input_9_phone"]')
phonebutton.send_keys "666999"

#pressing button next on PAGE 3
sibutton = driver.find_element(:xpath, '/html/body/div[5]/form/ul/li[3]/div/div/div[3]/button[2]')
sibutton.click

#pressing button next on PAGE 4
secbutton = driver.find_element(:xpath, '/html/body/div[5]/form/ul/li[4]/div/div/div[3]/button[2]')
secbutton.click

#pressing button next/submit on PAGE 5
mailbutton = driver.find_element(:xpath, '/html/body/div[5]/form/ul/li[5]/div/div/div[3]/button[3]')
mailbutton.click
