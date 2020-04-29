require_relative 'base_page'

class Dash < BasePage
  #element contains locators for both - android and ios respectively
  element :ok_button, 'xpath://hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.Button[2]', 'name == "Hello, World!"'
end