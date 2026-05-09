#
# Be sure to run `pod lib lint ZygoteWebImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZygoteLogger'
  s.version          = '0.1.5'
  s.summary          = 'ZygoteLogger'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.2tianxin.com/zygote/3rd/ZygoteLogger'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
			   }
  s.author           = { 'tianjin' => 'tianjin@xinyu100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/ZygoteLogger/0.1.5/ZygoteLogger_60.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.platform  = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.libraries    = ["z"]
  s.xcconfig     = { 'OTHER_LDFLAGS' => '-ObjC'}
  s.frameworks   = [ 'CoreTelephony', 'SystemConfiguration']
  
  #依赖的本地私有库
  s.dependency 'dxmars'
   
  s.ios.vendored_framework   = "#{s.name}"".framework"

  s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/ZygoteLogger/.."/**' }

end
