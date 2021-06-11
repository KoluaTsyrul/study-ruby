# RegistrationPage class include all elements from registration page and inherit LoginPage
class RegistrationPage < LoginPage
  set_url 'http://192.168.0.153/account/register'
  element :login_field, '#user_login'
  element :password_field, '#user_password'
  element :confirmation_field, '#user_password_confirmation'
  element :first_name_field, '#user_firstname'
  element :last_name_field, '#user_lastname'
  element :email_field, '#user_mail'
  element :language_drop_down, '#user_language'
  element :submit_btn, :xpath, '//*[@id="new_user"]/input[3]'
  element :lost_password_link, '.lost_password'
end
