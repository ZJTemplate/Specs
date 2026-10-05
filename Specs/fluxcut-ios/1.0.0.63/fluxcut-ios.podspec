Pod::Spec.new do |s|
  s.name        = 'fluxcut-ios'
  s.version     = '1.0.0.63'
  s.summary     = 'FluxCut SDK.'
  s.description = 'FluxCut native media editing SDK for iOS.'
  s.homepage    = 'https://github.com/ZJTemplate/Specs'
  s.license     = { :type => 'Commercial' }
  s.author      = { 'ZJ' => 'sdk@zj.example' }
  s.source      = { :http => 'https://oss.zjtemplate.com/ios_sdk/fluxcut/fluxcut-ios-1.0.0.63.zip' }

  s.platform = :ios, '13.0'
  s.static_framework = true
  s.library = 'c++'
  s.public_header_files = 'include/Sky{*}.h'
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = 'include'
  s.ios.vendored_frameworks = 'libs/FluxCutSDK.xcframework'
  s.preserve_paths = 'libs/FluxCutSDK.xcframework'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/fluxcut-ios/include"',
    'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'
  }

  s.dependency 'ffmpeg', '5.1.7-0914'
  s.dependency 'OpenSSL-Universal', '3.3.3001'
  s.dependency 'fluxrender', '10.3.3-20261004-144902'
end
