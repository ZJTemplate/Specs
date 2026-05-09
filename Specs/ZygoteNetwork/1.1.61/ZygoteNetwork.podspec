#
# Be sure to run `pod lib lint ZygoteNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZygoteNetwork'
  s.version          = '1.1.61'
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
  s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/ZygoteNetwork/1.1.61/ZygoteNetwork_191.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.requires_arc = true #是否需要arc
  
  s.ios.deployment_target = '8.0'

  #s.libraries = 'z', 'c++', 'sqlite3'
  s.frameworks = 'CoreTelephony','SystemConfiguration','AuthenticationServices'

  s.dependency 'SSZipArchive','~>2.1.4'
  s.dependency 'ZygoteServiceCenter'
  s.dependency 'AFNetworking'
  s.dependency 'AlicloudHTTPDNS', '1.7.3'
  s.dependency 'YYDispatchQueuePool', '1.0'
  s.dependency 'Protobuf'
  s.dependency 'GZIP'
  s.dependency 'ZygoteApmNetReporter','0.1.11'
  s.dependency 'ZygoteDeviceUtils'

  
  s.default_subspec = 'ZygoteNetwork-all'

  s.subspec 'Core' do |p|
  
  p.ios.vendored_framework = "#{s.name}"".framework", "#{s.name}"".framework/Resources/*.framework"
  p.ios.vendored_libraries = "#{s.name}"".framework/Resources/*.a";
  p.resource               = "#{s.name}"".framework/Resources/*.bundle";

  end
  
  s.subspec 'ZygoteNetwork-all' do |p|
        p.dependency "#{s.name}""/Core"
  	p.dependency 'dxmars'
  end

end
