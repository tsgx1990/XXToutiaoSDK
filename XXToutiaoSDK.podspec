#
#  Be sure to run `pod spec lint XXToutiaoSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "XXToutiaoSDK"
  s.version      = "0.0.3"
  s.summary      = "TouTiao app anyone can join up"

  s.homepage     = "https://github.com/tsgx1990/XXToutiaoSDK"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "luguanglong" => "luguanglong@baijiahulian.com" }
  # Or just: s.author    = "luguanglong"
  # s.authors            = { "luguanglong" => "luguanglong@syswin.com" }
  # s.social_media_url   = "http://twitter.com/luguanglong"

  # s.platform     = :ios
  s.platform     = :ios, "7.0"

  #  When using multiple platforms
  s.ios.deployment_target = "7.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/tsgx1990/XXToutiaoSDK.git", :tag => s.version }

  #s.exclude_files = "Classes/Exclude"
  s.source_files = "XXToutiaoSDK/XXToutiaoSDK.h"
  s.public_header_files = "XXToutiaoSDK/XXToutiaoSDK.h"
  s.resource  = "XXToutiaoSDK/XXToutiaoResBundle.bundle"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  s.framework  = "WebKit"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  s.library   = "sqlite3"
  # s.libraries = "iconv", "xml2"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  s.dependency "SDWebImage", "~> 3.7.3"
  s.dependency "YYModel", "~> 1.0.3"
  s.dependency "Masonry", "~> 1.0.1"
  s.dependency "MJRefresh", "~> 3.1.0"

  s.subspec 'fat' do |ss|

    ss.source_files = "XXToutiaoSDK/XXToutiaoSDK.h"
    ss.public_header_files = "XXToutiaoSDK/XXToutiaoSDK.h"
    ss.resource = "XXToutiaoSDK/XXToutiaoResBundle.bundle"
    ss.vendored_libraries = "XXToutiaoSDK/fat/libXXToutiaoSDK.a"

  end

  s.subspec 'iphone' do |ss|

    ss.source_files = "XXToutiaoSDK/XXToutiaoSDK.h"
    ss.public_header_files = "XXToutiaoSDK/XXToutiaoSDK.h"
    ss.resource = "XXToutiaoSDK/XXToutiaoResBundle.bundle"
    ss.vendored_libraries = "XXToutiaoSDK/iphoneos/libXXToutiaoSDK.a"

  end
  
  s.subspec 'simulator' do |ss|

    ss.source_files = "XXToutiaoSDK/XXToutiaoSDK.h"
    ss.public_header_files = "XXToutiaoSDK/XXToutiaoSDK.h"
    ss.resource = "XXToutiaoSDK/XXToutiaoResBundle.bundle"
    ss.vendored_libraries = "XXToutiaoSDK/iphonesimulator/libXXToutiaoSDK.a"

  end
  
end
