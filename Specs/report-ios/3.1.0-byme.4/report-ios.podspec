#
# Be sure to run `pod lib lint ZygoteWebImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'report-ios'
  s.version          = '3.1.0-byme.4'
  s.summary          = 'A short description of report-ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tianjin/report-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
	               }
  s.author           = { 'tianjin' => 'tianjin@xinyu100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/report-ios/3.1.0-byme.4/report-ios_55.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'    
  s.requires_arc          = true
  s.static_framework      = true

  s.dependency 'UMCommon'
  s.dependency 'UMPush'
  s.dependency 'ZygoteServiceCenter'
  s.dependency 'ZygoteNetwork'
  
  s.libraries = 'z', 'c++', 'sqlite3'
  s.frameworks = 'CoreMotion', 'AVFoundation', 'Security', 'CoreTelephony', 'AdSupport', 'SystemConfiguration', 'iAd', 'AdServices', 'AppTrackingTransparency'

  s.ios.vendored_framework   = "#{s.name}"".framework"
  s.ios.vendored_libraries = "#{s.name}"".framework/Resources/*.a";

end
