class PlatformPage < Page
    PROFILE_ICON    = { by: { class: 'bp3-icon bp3-icon-caret-downl' }.freeze
    PROFILE_BUTTON  = { by: { class: 'bp3-text-overflow-ellipsis bp3-fill' }, title: 'Profile' }.freeze
    
    def click_profile_icon
      @user.find_element(PROFILE_ICON).click
    end

    def click_profile_button
        @user.find_element(PROFILE_BUTTON).click
    end

    def profile_icon_displayed?
      @user.find_element(PROFILE_ICON).displayed?
    end
  end