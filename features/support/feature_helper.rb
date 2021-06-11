# frozen_string_literal: true

# Module FeatureHelper
module FeatureHelper
  def login(user_name, user_password)
    @login_page = LoginPage.new
    @login_page.load

    @login_page.login_field.set user_name
    @login_page.password_field.set user_password
    @login_page.submit_btn.click
  end

  def fill_registration_form(user_login, user_pass, first_name, last_name, user_email)
    registration_page = RegistrationPage.new

    registration_page.login_field.set user_login
    registration_page.password_field.set user_pass
    registration_page.confirmation_field.set user_pass
    registration_page.first_name_field.set first_name
    registration_page.last_name_field.set last_name
    registration_page.email_field.set user_email
    registration_page.submit_btn.click
  end

end
