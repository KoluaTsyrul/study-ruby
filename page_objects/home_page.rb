# HomePage class
class HomePage < SitePrism::Page
  set_url 'http://192.168.0.153/'
  element :sign_in_link, :xpath, '//*[@id="account"]/ul/li[1]/a'
end
