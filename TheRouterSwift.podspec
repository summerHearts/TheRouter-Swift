#
# Be sure to run `pod lib lint TheRouterSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TheRouterSwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TheRouterSwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/summerHearts/TheRouter-Swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mars.yao' => 'mars.yao' }
  s.source           = { :git => 'https://github.com/summerHearts/TheRouter-Swift.git', :tag => s.version.to_s }
  s.source_files = 'TheRouterSwift/Classes/**/*'
  s.frameworks = 'UIKit', 'Foundation'
  s.ios.deployment_target = '11.0'
  # swift 支持的版本
  s.swift_version = '5.0'
  s.static_framework = true
  s.xcconfig = {"ENABLE_BITCODE" => "NO"}
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS[config=Debug]' => '-D DEBUG'
  }

end
