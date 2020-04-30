#   def wait_for_element(locator)
#     wait = Selenium::WebDriver::Wait.new(timeout: 30, interval: 2)
#     if locator.is_a?(Selenium::WebDriver::Element)
#       begin
#         wait.until {locator.displayed?}
#         return locator
#       rescue Selenium::WebDriver::Error::NoSuchElementError
#         p "Element for provided element object was not found!"
#       end
#     end

#     # begin
#     #   wait.until {driver.find_element(locator.keys.first.to_sym, locator[locator.keys.first])}
#     # rescue Selenium::WebDriver::Error::TimeOutError
#     #   p "ELEMENT NOT FOUND"
#     # rescue Selenium::WebDriver::Error::NoSuchElementError
#     #   p "Element for provided locator was not found!"
#     # end
#   end

#   def wait_for_elements(locator_type, locator_value)
#     wait = Selenium::WebDriver::Wait.new(timeout: 15, interval: 2)
#     begin
#       wait.until do
#         element = find_elements(locator_type.to_sym, locator_value)
#         element unless element.empty? or element.nil?
#       end
#     rescue Selenium::WebDriver::Error::TimeOutError
#       p "ELEMENTS NOT FOUND"
#     end
#   end

module Utilities
    class Util

def element(element_name, locator, error = true)
    send(:define_method, element_name) do
      begin
        wait.until {locator.displayed?}
      rescue Appium::Core::Wait::TimeoutError
        if error
          raise "Could not find element"
        else
          return false
        end
      end
    end
  end
end
end