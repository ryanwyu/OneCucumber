# This file provides setup and common functionality across all features.  It's
# included first before every test run, and the methods provided here can be 
# used in any of the step definitions used in a test.  This is a great place to
# put shared data like the location of your app, the capabilities you want to
# test with, and the setup of selenium.

require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'rubygems'
require 'selenium-webdriver'
#require '/Users/yourusername/workspace/MobileAutomation/mobileautomation/AppGap/features/step_definitions/ios_simulator'

MAX_SLEEP_SECS = 30
MAXWAITSECONDS = 30
ORACLE_ADDRESS = '//your.oracle.db.domain.name.com:1521/your-db-name'
# $server_url = "http://10.0.0.4:4723/wd/hub"
## yuwei's mac book address 
#$server_url = "http://10.97.180.97:4723/wd/hub"
## shared imac testing machine 
#$server_url = "http://10.96.211.10:4723/wd/hub"
## local url value
#$server_url = "http://127.0.0.1:4723/wd/hub"
$server_url = "http://appium.server.host:4723/wd/hub"

$app = "/users/ryanwyu/Downloads/作家助手.app"

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld
end

# Load the desired configuration from appium.txt, create a driver then
# Add the methods to the world
$dev = ENV['IDEVICENAME']
$caps = Appium.load_appium_txt file: File.expand_path("./../"+ENV['IDEVICENAME']+"/appium.txt", __FILE__), verbose: true
$caps[:appium_lib] = {}
$caps[:appium_lib][:server_url] = $server_url

if $dev != "dummy"
  $caps[:caps][:app] = $app
end
# Cucumber method World()
World do
  AppiumWorld.new
end

Before {

  if $caps[:caps][:platformName] == "ios" or $caps[:caps][:platformName] == "iOS"
    Appium::Driver.new($caps)
    Appium.promote_appium_methods IosSimulator
    $executor = AppExecutor.new(IosSimulator.new)
  else
    Appium::Driver.new($caps)
    Appium.promote_appium_methods AndroidSimulator
    $executor = AppExecutor.new(AndroidSimulator.new)
  end

  if $dev == "dummy"
    puts "Set in dummy mode, the appium will not be connected!"
  else
    $driver.start_driver
    $driver.set_wait 60
  end

}

After {
  if $dev == "demmy"
  else
    $driver.driver_quit
  end

}