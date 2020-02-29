Before do
# this is for loading the data for testing
    @data = YAML.load_file('config/test_data.yml')
   
# and this would set the definition of user in Appium
    config = YAML.load_file('config/pc_config_local.yml')
    @user = #I don't know to set this. If I use appium I should declare here, but I'm not sure how

# declaration of the page object
    @login = LoginPage.new(@user)
    @platform = PlatformPage.new(@user)
    @profile = ProfilePage.new(@user)

end
