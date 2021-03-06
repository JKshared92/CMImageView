#
#  Be sure to run `pod spec lint CMImageView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "CMImageView"
  s.version      = "1.0.0"
  s.summary      = "自己用的imageView封装"

  s.homepage     = "https://github.com/JKshared92/CMImageView"
  s.license      = "MIT"

  s.author       = { "comma" => "506702341@qq.com" }

  s.source       = { :git => "https://github.com/JKshared92/CMImageView.git", :tag => "#{s.version}" }

  s.platform     = :ios, "8.0"

  s.source_files = "CMImageView/*.{h,m}"
  s.dependency  'YYWebImage'

  

end
