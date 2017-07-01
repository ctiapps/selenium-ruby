#!/usr/bin/env ruby

require 'watir'
require 'pp'

browser = Watir::Browser.new :firefox,
                             desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(marionette: false)

browser.goto 'https://duckduckgo.com/html'
browser.text_field(id: 'search_form_input_homepage').set('What is my IP address')
browser.button(type: 'submit').click

result = browser.text.split("\n")[1]
browser.quit

puts result

