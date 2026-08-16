Pod::Spec.new do |s|
  s.name = 'ffmpeg'
  s.version = '5.1.7-20260816-090906'
  s.summary = 'Prebuilt FFmpeg libraries for ios.'
  s.homepage = 'https://ffmpeg.org/'
  s.license = { :type => 'LGPL-2.1-or-later' }
  s.author = { 'ZJTemplate' => 'dev@zjtemplate.com' }
  s.source = { :http => 'https://oss.zjtemplate.com/ios_sdk/ffmpeg/ffmpeg_5.1.7-20260816-090906.zip' }
  s.platform = :ios, '13.0'
  s.frameworks = 'AudioToolbox', 'CoreFoundation', 'CoreMedia', 'CoreVideo', 'Foundation', 'Security', 'VideoToolbox'
  
  s.vendored_frameworks = 'FFmpeg.xcframework'
end
