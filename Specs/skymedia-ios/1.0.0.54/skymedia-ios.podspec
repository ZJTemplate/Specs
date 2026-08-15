Pod::Spec.new do |s|
  s.name        = 'skymedia-ios'
  s.version     = '1.0.0.54'
  s.summary     = 'SkyMedia SDK.'
  s.description = 'SkyMedia native media editing SDK for iOS.'
  s.homepage    = 'https://github.com/ZJTemplate/Specs'
  s.license     = { :type => 'Commercial' }
  s.author      = { 'ZJ' => 'sdk@zj.example' }
  s.source      = { :http => 'https://oss.zjtemplate.com/ios_sdk/skymedia/skymedia-ios-1.0.0.54.zip' }

  s.platform = :ios, '13.0'
  s.library = 'c++'
  s.public_header_files = 'include/Sky{*}.h'
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = 'include'
  s.ios.vendored_frameworks = 'libs/SkyMediaSDK.framework'
  s.preserve_paths = 'libs/SkyMediaSDK.framework'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/skymedia-ios/include"',
    'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'
  }

  # The current binary is device-only. Keep Intel simulator compatibility
  # until SkyMediaSDK is distributed as an XCFramework.
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.dependency 'ffmpeg', '5.1.7-0815'
  s.dependency 'OpenSSL-Universal', '3.3.3001'
  s.dependency 'orangefilter', '10.3.3-0815'
end
