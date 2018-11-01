class LogInPage

  def initialize driver
    @driver = driver
  end

  def click_log_in_page
        @driver.find_elements(:class, "android.widget.LinearLayout")[0].click
  end

  def click_facebook_log_in
        @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/fb_signin").click
  end

  def fill_fb_username
    @driver.find_element(:id, "m_login_email").send_keys("aymanTheFirst \n")
  end

  def fill_fb_password
    @driver.find_element(:id, "m_login_password").send_keys("password \n")
  end

  def click_submit
    @driver.find_element(:id, "u_0_5").click
  end

  def click_google_log_in
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/google_signin").click
  end

  def click_sign_in
    @driver.find_element(:id, "android:id/button1").click
  end
  
  def click_on_email
    @driver.find_elements(:class, "android.view.View").first.click
  end


end
