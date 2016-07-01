# Uncomment next line if you want oracle connection
#require 'oci8'
# Writer app functional definition
require_relative '../support/app_executor'

class WriterFirstPage < YWAppPageBase

  @name_input_text_field = {
      'xpath' => "//UIATextField[1]",
      'name' => "",
      'id' => "",
      'value' => "请输入QQ号"
  }

  @password_input_text_field = {
      'xpath' => "//UIATextField[2]",
      'name' => "",
      'id' => "",
      'value' => "请输入密码"
  }

  @login_button = {
      'xpath' => "//UIAButton[1]",
      'name' => "登录",
      'id' => ""
  }


  def initialize(name)
    @page_name = name
  end

end



  def login_name_input(username)
    $executor.text_field_input_xpath("//UIATextField[1]", username)
  end

  def login_name_input(password)
    $executor.text_field_input_xpath("//UIATextField[2]", password)
  end

