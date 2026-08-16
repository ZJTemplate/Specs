Pod::Spec.new do |s|
  s.name     = "orangefilter_macos"
  s.version  = "10.3.3-0815"
  s.summary  = "A prebuilt macOS library for OrangeFilter."
  s.license  = {:type => 'BSD-licensed'}
  s.homepage = "http://www.sunsetlakesoftware.com"
  s.author   = { 'Your Company' => 'email@example.com' }

  s.source   = {:http =>"https://oss.zjtemplate.com/macos_sdk/orangefilter/orangefilter_10.3.3-0815.zip"}

  macos_frameworks = 'CoreMedia','CoreVideo','QuartzCore','AVFoundation','Foundation','CoreGraphics','CoreImage','OpenGL','GLUT'
  
  s.default_subspec = 'orangefilter-all-macOS-revision'
  s.platform = :osx, '10.13'
  s.osx.deployment_target = '10.13'
  
  s.subspec 'orangefilter-core-macOS' do |sdc|
          sdc.frameworks     = macos_frameworks
          sdc.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
          sdc.source_files   = 'include/**/*.h'
          sdc.preserve_paths = 'libs/**/*_macOS.framework'
          sdc.osx.vendored_frameworks = 'libs/zlib_macOS.framework', 'libs/opencv_macOS.framework', 'libs/of_effect_macOS.framework', 'libs/of_pose_macOS.framework', 'libs/of_core_macOS.framework'
  end
  
  s.subspec 'orangefilter-core-macOS-revision' do |sdcr|
          sdcr.frameworks     = macos_frameworks
          sdcr.libraries      = 'z.1.2.5'
          sdcr.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
          sdcr.source_files   = 'include/**/*.h'
          sdcr.preserve_paths = 'libs/**/*_macOS.framework'
          sdcr.osx.vendored_frameworks = 'libs/zlib_macOS.framework', 'libs/opencv_macOS.framework', 'libs/of_effect_macOS.framework', 'libs/of_pose_macOS.framework', 'libs/of_core_macOS.framework'
  end

  s.subspec 'orangefilter-all_no_ar-macOS' do |sdan|
          sdan.frameworks     = macos_frameworks
          sdan.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
          sdan.source_files   = 'include/**/*.h'
          sdan.preserve_paths = 'libs/**/*_macOS.framework'
          sdan.osx.vendored_frameworks = 'libs/zlib_macOS.framework', 'libs/opencv_macOS.framework', 'libs/of_effect_macOS.framework', 'libs/of_pose_macOS.framework', 'libs/of_core_macOS.framework', 'libs/facedancegame_macOS.framework', 'libs/ardancegame_macOS.framework', 'libs/of_avatar_macOS.framework'
          sdan.osx.vendored_libraries = 'libs/libwebp_macOS.a', 'libs/libdraco_macOS.a'
  end
  
  s.subspec 'orangefilter-all_no_ar-macOS-revision' do |sdanr|
          sdanr.frameworks     = macos_frameworks
          sdanr.libraries      = 'z.1.2.5'
          sdanr.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
          sdanr.source_files   = 'include/**/*.h'
          sdanr.preserve_paths = 'libs/**/*_macOS.framework'
          sdanr.osx.vendored_frameworks = 'libs/zlib_macOS.framework', 'libs/opencv_macOS.framework', 'libs/of_effect_macOS.framework', 'libs/of_pose_macOS.framework', 'libs/of_core_macOS.framework', 'libs/facedancegame_macOS.framework', 'libs/ardancegame_macOS.framework', 'libs/of_avatar_macOS.framework' 
  end

  s.subspec 'orangefilter-all-macOS' do |sda|
          sda.frameworks     = macos_frameworks
          sda.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
          sda.source_files   = 'include/**/*.h'
          sda.preserve_paths = 'libs/**/*_macOS.framework'
          sda.osx.vendored_frameworks = 'libs/*_macOS.framework'
  end
  
  s.subspec 'orangefilter-all-macOS-revision' do |sdar|
          sdar.frameworks     = macos_frameworks
          sdar.libraries      = 'z.1.2.5'
          sdar.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
          sdar.source_files   = 'include/**/*.h'
          sdar.preserve_paths = 'libs/**/*_macOS.framework'
          sdar.osx.vendored_frameworks = 'libs/*_macOS.framework'
  end

  s.subspec 'orangefilter_static-core-lite-macOS' do |sscl|
          sscl.frameworks     = macos_frameworks
          sscl.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          sscl.source_files   = 'include/**/*.h'
          sscl.preserve_paths = 'libs/**/*_macOS.a'
          sscl.osx.vendored_libraries = 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a'
  end
  
  s.subspec 'orangefilter_static-core-lite-macOS-revision' do |ssclr|
          ssclr.frameworks     = macos_frameworks
          ssclr.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssclr.source_files   = 'include/**/*.h'
          ssclr.preserve_paths = 'libs/**/*_macOS.a'
          ssclr.libraries = 'z.1.2.5'
          ssclr.osx.vendored_libraries = 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a'
  end
  
  s.subspec 'orangefilter_static-core-macOS' do |ssc|
          ssc.frameworks     = macos_frameworks
          ssc.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssc.source_files   = 'include/**/*.h'
          ssc.preserve_paths = 'libs/**/*_macOS.a'
          ssc.osx.vendored_libraries = 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a', 'libs/libbullet_macOS.a', 'libs/liblua_macOS.a', 'libs/libfreetype_macOS.a'
  end
  
  s.subspec 'orangefilter_static-core-macOS-revision' do |sscr|
          sscr.frameworks     = macos_frameworks
          sscr.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          sscr.source_files   = 'include/**/*.h'
          sscr.preserve_paths = 'libs/**/*_macOS.a'
          sscr.libraries = 'z.1.2.5'
          sscr.osx.vendored_libraries = 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a', 'libs/libbullet_macOS.a', 'libs/liblua_macOS.a', 'libs/libfreetype_macOS.a'
  end
  
  s.subspec 'orangefilter_static-meipai-core-macOS' do |ssmc|
          ssmc.frameworks     = macos_frameworks
          ssmc.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssmc.source_files   = 'include/**/*.h'
          ssmc.preserve_paths = 'libs/**/*_macOS.a'
          ssmc.osx.vendored_libraries = 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a', 'libs/liblua_macOS.a'
  end
  
  s.subspec 'orangefilter_static-meipai-core-macOS-revision' do |ssmcr|
          ssmcr.frameworks     = macos_frameworks
          ssmcr.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssmcr.source_files   = 'include/**/*.h'
          ssmcr.preserve_paths = 'libs/**/*_macOS.a'
          ssmcr.libraries = 'z.1.2.5'
          ssmcr.osx.vendored_libraries = 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a', 'libs/liblua_macOS.a'
  end
  
  s.subspec 'orangefilter_static-all_no_ar-macOS' do |ssan|
          ssan.frameworks     = macos_frameworks
          ssan.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssan.source_files   = 'include/**/*.h'
          ssan.preserve_paths = 'libs/**/*_macOS.a'
          ssan.osx.vendored_libraries = 'libs/libwebp_macOS.a', 'libs/libdraco_macOS.a', 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a', 'libs/libbullet_macOS.a', 'libs/liblua_macOS.a', 'libs/libfacedancegame_static_macOS.a', 'libs/libardancegame_static_macOS.a', 'libs/libfreetype_macOS.a', 'libs/libof_avatar_static_macOS.a'
  end
  
  s.subspec 'orangefilter_static-all_no_ar-macOS-revision' do |ssanr|
          ssanr.frameworks     = macos_frameworks
          ssanr.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssanr.source_files   = 'include/**/*.h'
          ssanr.preserve_paths = 'libs/**/*_macOS.a'
          ssanr.libraries = 'z.1.2.5'
          ssanr.osx.vendored_libraries = 'libs/libof_core_static_macOS.a', 'libs/libzlib_static_macOS.a', 'libs/libopencv_static_macOS.a', 'libs/libof_effect_static_macOS.a', 'libs/libof_pose_static_macOS.a', 'libs/libbullet_macOS.a', 'libs/liblua_macOS.a', 'libs/libfacedancegame_static_macOS.a', 'libs/libardancegame_static_macOS.a', 'libs/libfreetype_macOS.a', 'libs/libof_avatar_static_macOS.a'
  end

  s.subspec 'orangefilter_static-all-macOS' do |ssa|
          ssa.frameworks     = macos_frameworks
          ssa.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssa.source_files   = 'include/**/*.h'
          ssa.preserve_paths = 'libs/**/*_macOS.a'
          ssa.osx.vendored_libraries = 'libs/*_macOS.a'
  end
  
  s.subspec 'orangefilter_static-all-macOS-revision' do |ssar|
          ssar.frameworks     = macos_frameworks
          ssar.xcconfig       = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter_macos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter_macos/libs" }
          ssar.source_files   = 'include/**/*.h'
          ssar.preserve_paths = 'libs/**/*_macOS.a'
          ssar.libraries = 'z.1.2.5'
          ssar.osx.vendored_libraries = 'libs/*_macOS.a'
  end
end
