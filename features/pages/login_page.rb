class LoginPage < Page
    EMAIL                   = { by: { class: 'form-control' }, title: 'Email' }.freeze
    PASSWORD                = { by: { class: 'form-control' }, title: 'Password' }.freeze
    FORGOT_PASSWORD_BUTTON  = { by: { class: 'col-sm-6 col-5 fg-pass' }, title: 'Forgot Password?' }.freeze
    LOGIN_BUTTON            = { by: { class: 'bp3-button btn-gray' }, title: 'Log In' }.freeze
    WRONG_DATA_BANNER       = { by: { class: 'bp3-toast-message' }, title: 'user credentials or account not found' }
    
    def do_login(email_input, password_input)
      element_list(EMAIL[:by], EMAIL[:title]).send_keys(email_input)
      element_list(PASSWORD[:by], PASSWORD[:title]).send_keys(password_input)
      @user.find_element(LOGIN_BUTTON).click
    end
  
    def login_button_displayed?
      @user.find_element(LOGIN_BUTTON).displayed?
    end
  
    def login_button_enabled?
      @user.find_element(LOGIN_BUTTON).enabled?
    end
  
    def click_forgot_password_button
      @user.find_element(FORGOT_PASSWORD_BUTTON).click
    end

    def wrong_data_banner_displayed?
      @user.find_element(WRONG_DATA_BANNER).displayed?
    end
  end
