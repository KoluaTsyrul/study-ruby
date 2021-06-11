# frozen_string_literal: true

# Module ApiHelper
module ApiHelper
  @url = 'http://192.168.0.103'

  def get_user_list
    RestClient.get "#{@url}/users.json", 'Content-type' => 'application/json', 'X-Redmine-API-key' => '8d45ad0e71c625d6a611589930679815c817bece'
  end

  def create_user
    RestClient.post "#{@url}/users.json", { 'user' => { 'login' => 'Petro123', 'firstname' => 'Petro1', 'lastname' => 'Melnyk', 'mail' => 'petel423@1gmail.com', 'password' => 'qwer1234' } }.to_json, 'Content-type' => 'application/json', 'X-Redmine-API-key' => '8d45ad0e71c625d6a611589930679815c817bece'
  end
end
