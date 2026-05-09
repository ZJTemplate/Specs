#
# Be sure to run `pod lib lint ZygoteWebImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZygoteCompassSDK'
  s.version          = '0.1.9'
  s.summary          = 'ZygoteCompassSDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.2tianxin.com/zygote/report/report-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
			   }
  s.author           = { 'tianjin' => 'tianjin@xinyu100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/ZygoteCompassSDK/0.1.9/ZygoteCompassSDK_37.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.libraries  = 'sqlite3'

  #s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore', 'AssetsLibrary', 'ImageIO', 'Accelerate', 'MobileCoreServices'
    
  s.requires_arc = true #是否需要arc
  
  s.ios.deployment_target = '8.0'

  s.ios.vendored_framework   = "#{s.name}"".framework"
end
