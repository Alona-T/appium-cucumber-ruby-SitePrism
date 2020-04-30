# require_relative 'base_page'


# class Dash < BasePage
require 'helpers/utilities'

class DashAndroid < Util

  #element contains locators for both - android and ios respectively
  # element :ok_button, 'xpath://hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.Button[2]', 'name == "Hello, World!"'
  element :first_element, {xpath: 'hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.Button[2]'}
end