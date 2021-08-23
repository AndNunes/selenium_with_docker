from selenium import webdriver

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--no-sandbox')
chrome_options.add_argument('--headless')
chrome_options.add_argument('--disable-gpu')
driver = webdriver.Chrome(executable_path='/chromedriver/chromedriver', chrome_options=chrome_options)

driver.get('https://newbedev.com')
screenshot = driver.save_screenshot('images/test.png')
driver.quit()