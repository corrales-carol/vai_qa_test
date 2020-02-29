class ProfilePage < Page
    ADMIN_DETAILS = { by: { class: 'details-wrap text-center' }, title: 'admin' }.freeze
    TECHNICIAN_DETAILS = { by: { class: 'details-wrap text-center' }, title: 'technician' }.freeze
    
    def admin_details_displayed?
        @user.find_element(ADMIN_DETAILS).displayed?
    end

    def technician_details_displayed?
        @user.find_element(TECHNICIAN_DETAILS).displayed?
    end
  end