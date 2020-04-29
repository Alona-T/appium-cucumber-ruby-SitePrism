# Appium-Cucumber framework with shared PageObject and Test classes for both platforms
This framework can be used by QA Engineers for testing Native Mobile apps with a help of Cucumber and Rake execution.


# Features
 - appium-capybara (https://github.com/appium/appium_capybara)
 - Page Object model (using Site Prism)
 - Shared classes between Android and iOS
 - Cucumber HTML report with screenshots

# How to start 
 1. Clone the project
 2. Do ```bundle install```
 3. In Support/caps/PlatformName.txt change the app path to your path (apps are attached to the root of this project)
 4. For iOS is you run on real device please add the following to caps:
    * udid = udid of your device (can be found in iTunes when you connect the phone)
    * xcodeSigningId = "iPhone Developer" - or any other name you use
    * xcodeOrgId = Can be found in developer.apple.com - Membershit - Team ID

 5. For running tests you can use rake tasks - as example
    * ```rake run_tests[android]```for Android platform
    * ```rake run_tests[ios]```for iOS platform
 
 6. to view HTML report copy Path from reports/mobile_report.html and paste it to any browser
