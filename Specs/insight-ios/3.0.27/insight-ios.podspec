Pod::Spec.new do |s|
	s.name             = 'insight-ios'
	s.version          = '3.0.27'
	s.summary          = 'A short description of insight.'
	s.license          = { :type => 'Copyright', :text => 'TI-Inc copyright' }
	s.author           = { 'tian' => 'needlestone@qq.com' }
	s.source = { :http => "https://p-template-hk.oss-cn-hongkong.aliyuncs.com/ios_sdk/insight-ios/3.0.27/insight-ios_141.zip" }

	s.ios.vendored_framework = "#{s.name}"".framework", "#{s.name}"".framework/Resources/*.framework"
	s.ios.vendored_libraries = "#{s.name}"".framework/Resources/*.a"
	s.resource               = "#{s.name}"".framework/Resources/*.bundle"

	s.ios.deployment_target = '9.0'
	s.dependency 'ZygoteServiceCenter'
	s.dependency 'Protobuf'
	s.dependency 'WCDB'
	s.dependency 'ZygoteUtils'
  	s.dependency 'ZygoteDeviceUtils', '~> 1.0.4'

end
