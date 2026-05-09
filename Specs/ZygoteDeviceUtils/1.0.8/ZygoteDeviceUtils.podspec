#
# Be sure to run `pod lib lint zim-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZygoteDeviceUtils'
  s.version          = '1.0.8'
  s.summary          = 'A short description of zim-ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.2tianxin.com/zygote/zygotedeviceutils/zygotedeviceutils-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
	               }
  s.author           = { 'tianjin' => 'tianjin@xinyu100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/ZygoteDeviceUtils/1.0.8/ZygoteDeviceUtils_15.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.libraries = 'z', 'c++', 'sqlite3'
  s.frameworks = 'CoreTelephony'

  s.requires_arc = true #是否需要arc
  
  s.ios.deployment_target = '9.0'
  s.ios.vendored_framework   = "#{s.name}"".framework"
  
end
