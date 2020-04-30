require 'appium_lib'
require 'capybara/cucumber'
require 'appium_capybara'

caps = Appium.load_appium_txt\
  file: File.expand_path("../../support/caps/#{ENV['PLATFORM']}.txt", __FILE__),\
  verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

# Capybara.register_driver(:appium) do |app|
#   opts = caps
#   puts opts
#   Appium::Capybara::Driver.new app, opts
# end

# Capybara.default_driver = :appium

# Capybara.add_selector(:predicate) do
#   custom(:predicate) { |locator| locator }
# end

# After do |scenario|
#   if scenario.failed?
#     add_screenshot
#   end
# end

# def add_screenshot
#   file_path = 'screenshot.png'
#   page.driver.browser.save_screenshot(file_path)
#   image = open(file_path, 'rb', &:read)
#   encoded_image = Base64.encode64(image)
#   embed(encoded_image, 'image/png;base64', 'SCREENSHOT')
# end