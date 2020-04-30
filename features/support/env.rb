require 'appium_lib'

caps = Appium.load_appium_txt\
  file: File.expand_path("../../support/caps/#{ENV['PLATFORM']}.txt", __FILE__),\
  verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object