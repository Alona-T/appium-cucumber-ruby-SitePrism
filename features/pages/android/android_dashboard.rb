class DashAndroid

  def first_element
    return driver.find_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.Button[2]")
  end
end