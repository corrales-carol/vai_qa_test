Given('a user with technician credentials') do
  @email = @data['user']['technician_email']
  @password = @data['user']['technician_password']
end

And('user fills login fields and submits') do
  @login.do_login(@email, @password)
end

And ('user logs in') do
  expect(@platform.profile_icon_displayed?).true
end

When ('user clicks on arrow menu') do
  @platform.click_profile_icon
end

And ('user clicks on profile') do
  @platform.click_profile_button
end

Then ('user has technician credentials') do
  expect(@profile.technician_details_displayed?).true
end