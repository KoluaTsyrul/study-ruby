# frozen_string_literal: true

# TopMenuSection class
class TopMenuSection < SitePrism::Section
  element :sign_in_link, :xpath, '//*[@id="account"]/ul/li[1]/a'
end
