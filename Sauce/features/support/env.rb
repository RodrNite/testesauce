require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome,timeout: 10)
 end

 Capybara.configure do |config|
   # digo que o driver padrao eh o do selenium.
   config.default_driver = :selenium 
   # defino a url padrao.
   config.default_max_wait_time = 10
 end

 MASSA = YAML.load_file('data/massa.yml')