# OneCucumber
OneCucumber is a automation test framework for APPs developed by PhoneGap. 
ONE Cucumber gherkin script will work on both of your iOS and Android APPs, so it is named as "OneCucumber".

Main Features:

1. Test scripts Android and iOS dual-platform support.
2. Under-test APP UI element objects repository support.
3. Oracle access interface support
4. Chinese language support

###Installation
Install ruby
    https://www.ruby-lang.org/en/downloads/
    
Install Cucumber
```
gem install cucumber
```

Download OneCucumber code:
```
git clone https://github.com/lannyzhujin/OneCucumber.git
```

Execute commands in peoject's root directory ：
```
cucumber -p nubia-5_0
cucumber -p iphone6sp-9_0
cucumber features/ios_client.feature -p iphone6sp-9_0
```


# OneCucumber
OneCucumber 是面向由PhoneGap开发APP的自动化测试框架。
由于该框架支持一套cucumber用例同时覆盖android和iOS两种平台，故名“OneCucumber”。

主要特性：

1. 测试脚本Android和iOS双平台支持。
2. 被测App界面元素对象库支持。
3. 提供Oracle数据库访问接口。
4. 测试脚本中文支持。

###安装：
安装ruby环境：
    https://www.ruby-lang.org/zh_cn/downloads/
    
安装Cucumber环境：
```
gem install cucumber
```

下载OneCucumber源码：
```
git clone https://github.com/lannyzhujin/OneCucumber.git
```

在项目根目录中执行用例,例如：
```
cucumber -p nubia-5_0
cucumber -p iphone6sp-9_0
cucumber features/ios_client.feature -p iphone6sp-9_0
```
