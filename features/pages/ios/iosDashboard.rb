class DashIOS

  def first_element
    return driver.find_element(accessibility_id: 'Hello, World!')
  end
end