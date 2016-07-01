#encoding: utf-8
require 'appium_lib'
#require 'writer_app'



假设(/^首次打开作家助手APP$/) do

  $executor.start_app

end

当(/^输入用户名"(.*?)"和登录密码(.*?)$/) do |username, password|
  login_name_input(username)
  login_pswd_input(password)

end

当(/^点击登录按钮$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

那么(/^通过验证并进入到消息页面$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
