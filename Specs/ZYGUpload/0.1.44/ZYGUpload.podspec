#
# Be sure to run `pod lib lint zim-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZYGUpload'
  s.version          = '0.1.44'
  s.summary          = 'A short description of zim-ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tianjin/ZYGUpload'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = {
	                 :type => 'Copyright',
	                 :text => <<-LICENSE
	                               XINYU-Inc copyright
	                             LICENSE
	               }
  s.author           = { 'tianjin' => 'tianjin@xinyu100.com' }
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/ZYGUpload/0.1.44/ZYGUpload_80.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.libraries = 'z', 'c++', 'sqlite3'
  s.dependency 'AFNetworking'#, '3.2.1'
  s.frameworks = 'CoreTelephony','SystemConfiguration'

  s.requires_arc = true #是否需要arc
  
  s.ios.deployment_target = '9.0'
  
  s.default_subspec          = 'Core'
  s.subspec 'Core' do |p|
      
      p.ios.vendored_framework = "#{s.name}"".framework", "#{s.name}"".framework/Resources/*.framework"
      p.ios.vendored_libraries = "#{s.name}"".framework/Resources/*.a";
      p.resource               = "#{s.name}"".framework/Resources/*.bundle";
      
      p.dependency 'ZygoteServiceCenter'
      p.dependency 'Protobuf'
      p.dependency 'AliyunOSSiOS'
      p.dependency 'AFNetworking', '~> 4.0'
      p.dependency 'GZIP'
  end
  
end
