Pod::Spec.new do |s|
  s.name = 'VNN'
  s.version = '1.0.4-20260815-135300'
  s.summary = 'JOYY Venus neural-network SDK.'
  s.description = 'Prebuilt static VNN XCFrameworks for iOS clients.'
  s.homepage = 'https://github.com/ZJTemplate/Specs'
  s.license = { :type => 'Proprietary' }
  s.author = { 'ZJTemplate' => 'opensource@zjtemplate.com' }
  s.source = { :http => 'https://oss.zjtemplate.com/ios_sdk/VNN/VNN_1.0.4-20260815-135300.zip' }

  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.frameworks = 'Accelerate', 'CoreMedia', 'CoreVideo', 'Foundation', 'Metal', 'MetalPerformanceShaders'
  s.libraries = 'c++'
  s.default_subspec = 'vnn-all'

  # Keep the historical VNN/vnn-all dependency name used by KolayMaker.
  # The root VNN pod also resolves to this subspec through default_subspec.
  s.subspec 'vnn-all' do |ss|
    ss.source_files = 'include/**/*.h'
    ss.public_header_files = 'include/**/*.h'
    ss.preserve_paths = 'include/**/*.h', 'xcframeworks/*.xcframework'
    ss.vendored_frameworks = 'xcframeworks/*.xcframework'
    ss.pod_target_xcconfig = {
      'HEADER_SEARCH_PATHS' => '${PODS_TARGET_SRCROOT}/include'
    }
  end
end
