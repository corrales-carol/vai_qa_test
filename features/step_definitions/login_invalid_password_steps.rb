Given('a user with a unregistered credentials') do
    @email = @data['user']['another_email']
    @password = @data['user']['wrong_password']
  end
  
 When('user fills login fields and submits') do
    @login.do_login(@email, @password)
  end
  
  Then('Then user can not log in') do
    expect(@login.wrong_data_banner_displayed?).true
  end