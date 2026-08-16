Pod::Spec.new do |s|
  s.name        = 'skymedia-ios'
  s.version     = '1.0.0.60'
  s.summary     = 'SkyMedia SDK.'
  s.description = 'SkyMedia native media editing SDK for iOS.'
  s.homepage    = 'https://github.com/ZJTemplate/Specs'
  s.license     = { :type => 'Commercial' }
  s.author      = { 'ZJ' => 'sdk@zj.example' }
  s.source      = { :http => 'https://oss.zjtemplate.com/ios_sdk/skymedia/skymedia-ios-1.0.0.60.zip' }

  s.platform = :ios, '13.0'
  s.static_framework = true
  s.library = 'c++'
  s.public_header_files = 'include/Sky{*}.h'
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = 'include'
  s.ios.vendored_frameworks = 'libs/SkyMediaSDK.xcframework'
  s.preserve_paths = 'libs/SkyMediaSDK.xcframework'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/skymedia-ios/include"',
    'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'
  }

  s.dependency 'ffmpeg', '5.1.7-0816'
  s.dependency 'OpenSSL-Universal', '3.3.3001'
  s.dependency 'orangefilter', '10.3.3-0815'
end
