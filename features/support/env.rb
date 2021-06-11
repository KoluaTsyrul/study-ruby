# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'jason'
require 'require_all'
require 'faker'
require 'rest-client'
require 'pry'
require 'timecop'

require_all 'page_objects'
require_relative 'feature_helper'
require_relative 'api_helper'

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[widow-size=1800,1000])
end
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

module AsyncSupport
  def eventually(timeout = 30, polling_interval = 0.1)
    time_limit = Time.now + timeout
    loop do
      begin
        yield
      rescue Exception => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit

      sleep polling_interval
    end
  end
end

World(FeatureHelper, ApiHelper, AsyncSupport)
