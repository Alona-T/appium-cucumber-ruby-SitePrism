Given("App's login page is opened") do
end

Then("Orders are present on the Orders tab") do
    dash = DashAndroid.new
    dash.first_element.displayed?
end