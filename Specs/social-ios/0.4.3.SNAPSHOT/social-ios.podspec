#
# Be sure to run `pod lib lint ZygoteWebImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'social-ios'
  s.version          = '0.4.3.SNAPSHOT'
  s.summary          = 'A short description of social-ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tianjin/auth-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
	               }
  s.author           = { 'tianjin' => 'tianjin@xinyu100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/social-ios/0.4.3.SNAPSHOT/social-ios_253.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.libraries  = 'z', 'c++', 'sqlite3'
  s.frameworks = 'CoreTelephony','SystemConfiguration'
  
  s.pod_target_xcconfig = { 'EXCLUDED_SOURCE_FILE_NAMES' => 'social-ios-dummy.m'}
  
  s.requires_arc = true #是否需要arc
  
  s.ios.deployment_target = '9.0'
  
  s.default_subspec          = 'Core'
  
	s.subspec 'Core' do |p|
		p.ios.vendored_framework = "#{s.name}"".framework", "#{s.name}"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}"".framework/Resources/*.a";
		p.resource               = "#{s.name}"".framework/Resources/*.bundle";
		
    p.libraries  = 'z', 'c++', 'sqlite3'
    p.frameworks = 'CoreTelephony','SystemConfiguration','AuthenticationServices'
    p.dependency 'ZygoteServiceCenter'
  end
  
  s.subspec 'WeChat' do |p|
		p.ios.vendored_framework = "#{s.name}-WeChat"".framework", "#{s.name}-WeChat"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}-WeChat"".framework/Resources/*.a";
		p.resource               = "#{s.name}-WeChat"".framework/Resources/*.bundle";
		p.dependency "#{s.name}/Core"
  end
  
  s.subspec 'Tencent' do |p|
		p.ios.vendored_framework = "#{s.name}-Tencent"".framework", "#{s.name}-Tencent"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}-Tencent"".framework/Resources/*.a";
		p.resource               = "#{s.name}-Tencent"".framework/Resources/*.bundle";
		p.dependency "#{s.name}/Core"
  end
  
  s.subspec 'Apple' do |p|
		p.ios.vendored_framework = "#{s.name}-Apple"".framework", "#{s.name}-Apple"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}-Apple"".framework/Resources/*.a";
		p.resource               = "#{s.name}-Apple"".framework/Resources/*.bundle";
		p.dependency "#{s.name}/Core"
  end
  
  s.subspec 'FaceBook' do |p|
		p.ios.vendored_framework = "#{s.name}-FaceBook"".framework", "#{s.name}-FaceBook"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}-FaceBook"".framework/Resources/*.a";
		p.resource               = "#{s.name}-FaceBook"".framework/Resources/*.bundle";
      	p.source_files = "FaceBook/*.{h,m,mm,cc}"
        p.dependency 'FBSDKCoreKit', '~> 12.0'
        p.dependency 'FBSDKLoginKit', '~> 12.0'
        p.dependency 'FBSDKShareKit', '~> 12.0'
		p.dependency "#{s.name}/Core"
  end
  
  s.subspec 'OneKeyVerify' do |p|
		p.ios.vendored_framework = "#{s.name}-OneKeyVerify"".framework", "#{s.name}-OneKeyVerify"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}-OneKeyVerify"".framework/Resources/*.a";
		p.resource               = "#{s.name}-OneKeyVerify"".framework/Resources/*.bundle";
		p.dependency "#{s.name}/Core"
		p.dependency 'UMCommon', '~> 7.2.9'
  end
  
  s.subspec 'Weibo' do |p|
		p.ios.vendored_framework = "#{s.name}-Weibo"".framework", "#{s.name}-Weibo"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}-Weibo"".framework/Resources/*.a";
		p.resource               = "#{s.name}-Weibo"".framework/Resources/*.bundle";
		p.dependency "#{s.name}/Core"
  end
  
  s.subspec 'Mizhua' do |p|
		p.ios.vendored_framework = "#{s.name}-Mizhua"".framework", "#{s.name}-Mizhua"".framework/Resources/*.framework"
		p.ios.vendored_libraries = "#{s.name}-Mizhua"".framework/Resources/*.a";
		p.resource               = "#{s.name}-Mizhua"".framework/Resources/*.bundle";
		p.dependency "#{s.name}/Core"
  end
  
end
