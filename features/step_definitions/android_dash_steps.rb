Given("App's login page is opened") do
end

Then("Orders are present on the Orders tab") do
    # @app.dashboard.ok_button.visible?
    @dash = DashAndroid.new(@test_data)
    dash.first_element.displayed?
end