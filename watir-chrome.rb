#!/usr/bin/env ruby

require 'watir'
require 'pp'

options = Selenium::WebDriver::Chrome::Options.new

options.add_argument('--no-sandbox')
options.add_argument('--window-size=1280,1024')
options.add_argument('--window-position=0,0')
options.add_argument('--user-data-dir')
options.add_argument('--enable-remote-extensions')

browser = Watir::Browser.new :chrome, options: options

browser.goto 'https://duckduckgo.com/html'
browser.text_field(id: 'search_form_input_homepage').set('What is my IP address')
browser.button(type: 'submit').click

result = browser.text.split("\n")[1]
browser.quit

puts result

