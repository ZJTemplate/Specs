Pod::Spec.new do |s|
  s.name = 'fluxrender'
  s.version = '10.3.3-20261004-144902'
  s.summary = 'Prebuilt static FluxRender XCFramework for iOS.'
  s.homepage = 'https://github.com/ZJTemplate/Specs'
  s.license = { :type => 'Commercial' }
  s.author = 'FluxRender'
  s.source = { :http => 'https://oss.zjtemplate.com/ios_sdk/fluxrender/fluxrender_ios_10.3.3-20261004-144902.zip' }

  s.platform = :ios, '13.0'
  s.static_framework = true
  s.vendored_frameworks = 'FluxRender.xcframework'
  s.frameworks = 'Accelerate', 'ARKit', 'AVFoundation', 'CoreGraphics',
                 'CoreImage', 'CoreMedia', 'CoreText', 'CoreVideo',
                 'Foundation', 'GLKit', 'OpenGLES', 'QuartzCore', 'UIKit'
  s.libraries = 'c++', 'iconv', 'z'

  # Keep the subspec consumed by existing clients while allowing the simpler
  # `pod 'fluxrender', '<version>'` form for all new integrations.
  s.default_subspec = 'fluxrender-all_no_ar'
  s.subspec 'fluxrender-all_no_ar' do |_subspec|
  end
end
