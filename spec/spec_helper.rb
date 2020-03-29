require 'capybara/rspec'
require 'webdrivers'
require 'site_prism'
require 'pry'

require_relative 'features/app'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  Capybara.app_host = 'https://en.wikipedia.org/wiki'
  Capybara.run_server = false
  Capybara.default_driver = :selenium_chrome
end
