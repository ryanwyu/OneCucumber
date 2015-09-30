# language: zh-CN

功能: 购买和赎回意如宝
  恭喜发财用户可以通过银行卡和胜达通钱包购买和赎回意如宝产品


场景: 通过胜达通钱包购买意如宝
  假设Appium启动恭喜发财APP以后
  当用户以用户名"15280000088"和密码"q111111"登录
  那么在我的财富页面上可以看到我的钱包余额和我的资产金额
  当使用"胜达通钱包""购买"1元人民币的意如宝产品
  同时输入支付密码"x1Y2z"后点击下一步
  那么返回"购买"收据
  并且检查"胜达通钱包"余额 - 1 人民币
  并且检查"意如宝"余额 + 1 人民币


场景: 通过胜达通钱包赎回意如宝
  假设Appium启动恭喜发财APP以后
  当用户以用户名"15280000088"和密码"q111111"登录
  那么在我的财富页面上可以看到我的钱包余额和我的资产金额
  当使用"胜达通钱包""赎回"1元人民币的意如宝产品
  同时输入支付密码"x1Y2z"后点击下一步
  那么返回"赎回"收据
  并且检查"胜达通钱包"余额 + 1 人民币
  并且检查"意如宝"余额 - 1 人民币


场景: 通过民生银行卡购买意如宝
  假设Appium启动恭喜发财APP以后
  当用户以用户名"15280000088"和密码"q111111"登录
  那么在我的财富页面上可以看到我的钱包余额和我的资产金额
  当使用"民生银行卡7891""购买"1元人民币的意如宝产品
  并且输入手机验证码
  同时输入支付密码"x1Y2z"后点击下一步
  那么返回"购买"收据
  并且检查"意如宝"余额 + 1 人民币


场景: 通过民生银行卡赎回意如宝
  假设Appium启动恭喜发财APP以后
  当用户以用户名"15280000088"和密码"q111111"登录
  那么在我的财富页面上可以看到我的钱包余额和我的资产金额
  当使用"民生银行卡7891""赎回"1元人民币的意如宝产品
  同时输入支付密码"x1Y2z"后点击下一步
  那么返回"赎回"收据
  并且检查"意如宝"余额 - 1 人民币

  