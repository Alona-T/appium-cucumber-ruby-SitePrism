require 'appium_lib'

case ENV['PLATFORM']
when 'ANDROID'
  caps = Appium.load_appium_txt\
  file: File.expand_path("../../support/caps/android.txt", __FILE__),\
  verbose: true
when 'IOS'
  caps = Appium.load_appium_txt\
  file: File.expand_path("../../support/caps/ios.txt", __FILE__),\
  verbose: true
end

p caps

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object