Pod::Spec.new do |s|
  s.name = 'orangefilter'
  s.version = '10.3.3-0815'
  s.summary = 'Prebuilt static OrangeFilter XCFramework for iOS.'
  s.homepage = 'https://github.com/ZJTemplate/Specs'
  s.license = { :type => 'Commercial' }
  s.author = { 'ZJTemplate' => 'dev@zjtemplate.com' }
  s.source = { :http => 'https://oss.zjtemplate.com/ios_sdk/orangefilter/orangefilter_ios_10.3.3-0815.zip' }

  s.platform = :ios, '13.0'
  s.static_framework = true
  s.vendored_frameworks = 'OrangeFilter.xcframework'
  s.frameworks = 'Accelerate', 'ARKit', 'AVFoundation', 'CoreGraphics',
                 'CoreImage', 'CoreMedia', 'CoreText', 'CoreVideo',
                 'Foundation', 'GLKit', 'OpenGLES', 'QuartzCore', 'UIKit'
  s.libraries = 'c++', 'iconv', 'z'

  s.default_subspec = 'orangefilter-all_no_ar'
  s.subspec 'orangefilter-all_no_ar' do |_subspec|
  end
end
