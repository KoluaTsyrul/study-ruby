# LoginPage class
class LoginPage < SitePrism::Page
  set_url 'http://192.168.0.103/login'
  element :login_field, '#username'
  element :password_field, '#password'
  element :submit_btn, '#login-submit'

  def inherit_method
    p 'this method is from Login page'
  end
end
