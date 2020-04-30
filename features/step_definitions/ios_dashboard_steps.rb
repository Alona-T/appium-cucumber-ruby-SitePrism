Given("App's login page is opened") do
end

Then("Orders are present on the Orders tab") do
    # @app.dashboard.ok_button.visible?
    @dash = DashIos.new
    dash.first_element.displayed?
end