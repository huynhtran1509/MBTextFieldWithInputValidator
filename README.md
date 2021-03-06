# MBTextFieldWithInputValidator

[![Version](https://img.shields.io/cocoapods/v/MBTextFieldWithInputValidator.svg?style=flat)](http://cocoapods.org/pods/MBTextFieldWithInputValidator)
[![License](https://img.shields.io/cocoapods/l/MBTextFieldWithInputValidator.svg?style=flat)](http://cocoapods.org/pods/MBTextFieldWithInputValidator)
[![Platform](https://img.shields.io/cocoapods/p/MBTextFieldWithInputValidator.svg?style=flat)](http://cocoapods.org/pods/MBTextFieldWithInputValidator)

## 功能

对 `UITextField` 的内容进行验证功能，如果内容不符合验证策略，则弹出错误信息提示用户。

## 主要特点

1.单个验证器的实现采用策略模式，使用者可以通过继承 `MBInputValidator`，重写 `func validateInput(input:UITextField) -> ErrorDesc?` 方法来自定义验证策略。目前已经实现的验证器如下：

- `MBEmptyInputValidator`:判断内容是否为空。
- `MBAlphabetInputValidator`：判断内容是否是英文字母。
- `MBNumberInputValidator`：判断内容是否是数字。
- `MBPhoneInputValidator`：判断内容是否是手机号。
- `MBPasswordInputValidator`：判断内容是否是6-12位字母或数字组成的密码。

2.为同一个 `UITextField` 指定多个验证器采用了链式的方式（具体指定方法参见 Example），验证器可以在代码中指定，也可以在 Xib/Storyboard 中指定，验证时只需要调用验证方法即可，实现验证策略对业务开发者透明。

## 使用

clone 项目，然后在 Example 目录执行 `pod install`。


## 安装

MBTextFieldWithInputValidator 已经支持 [CocoaPods](http://cocoapods.org)。只需要在 Podfile 中加入下面的内容即可：

```ruby
pod "MBTextFieldWithInputValidator"
```

## 更新

目前已经支持 Swift 3.0
