# Uncomment next line if you want oracle connection
#require 'oci8'
require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'rubygems'
require 'selenium-webdriver'
require_relative 'app_executor'

class IosSimulator < SimulatorStratrgy
  include RSpec::Matchers

  ################################
  # App Level function
  ################################

  def start_app
    # Make sure you have started appium server
    current_context = "WEBVIEW_1"
  end

  ################################
  # Input Text Field functions
  ################################

  def text_field_input_xpath(xpathvalue, inputvalue)
    find_element(:xpath, xpathvalue).send_keys inputvalue
  end

  def text_field_input_name(name, inputvalue)
    find_element(:name, name).send_keys inputvalue
  end

  def text_field_input_id(id, inputvalue)
    find_element(:id, name).send_keys inputvalue
  end

  ################################
  # Click Button Function
  ################################


  def uia_window_adapter
    windowPath = "UIAWindow[1]"
    if $caps[:caps][:deviceName] == "iPhone 6" || $caps[:caps][:deviceName] == "iPhone 6 Plus"
      windowPath = "UIAWindow[2]"
    end
    return windowPath
  end

  ################################
  # Other testability functions
  ################################
  def rescue_exceptions
    begin
      yield
    rescue Selenium::WebDriver::Error::NoSuchElementError
      retry
    end
  end

  def wait_until_displayed(locator)
    rescue_exceptions { find_element(:xpath, locator).displayed? }
  end

end
