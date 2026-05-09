#
# Be sure to run `pod lib lint apm-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'apm-ios'
  s.version          = '0.6.17.51.SNAPSHOT'
  s.summary          = 'A short description of apm-ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tianjin/apm-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
	               }
  s.author           = { 'tianjin' => 'tianjin@xinyu100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/apm-ios/0.6.17.51.SNAPSHOT/apm-ios_279.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.requires_arc = true #是否需要arc
  
  s.ios.deployment_target = '9.0'
  
  s.ios.vendored_framework   = "#{s.name}"".framework"
	
  #s.dependency 'matrix-wechat'
  s.dependency 'Protobuf'
  s.dependency 'ZygoteCompassSDK'

  # s.dependency 'insight-ios','~>3.0.8'
  s.dependency 'insight-ios','~>3.0.19'
  # s.dependency 'YYModel'
  s.dependency 'ZYGUpload', '>= 0.1.40'
  s.dependency 'ZygoteApmNetReporter'
  s.dependency 'ZygoteUtils'
  s.dependency 'SSZipArchive','~>2.1.4'
end
