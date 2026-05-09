#
# Be sure to run `pod lib lint ZygoteServiceCenter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZygoteServiceCenter'
  s.version          = '0.2.7'
  s.summary          = 'ServiceCenter'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'在线推送管理. 统一处理在线消息，并进行block回调处理。'
                       DESC

  s.homepage         = 'https://git.2tianxin.com/zygote/ZygoteServiceCenter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
			   }
  s.author           = { 'tianjin' => 'tianjin@xinyun100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/ZygoteServiceCenter/0.2.7/ZygoteServiceCenter_25.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.platform  = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.ios.vendored_framework   = "#{s.name}"".framework"

end
