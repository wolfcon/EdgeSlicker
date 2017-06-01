Pod::Spec.new do |s|

  s.name         = "EdgeSlicker"
  s.version      = "1.0.0"
  s.summary      = "Hide tab bar or other similar view on edge"
  s.description  = <<-DESC
                   Hide tab bar or other similar view on edge
                   DESC

  s.homepage     = "https://github.com/wolfcon/EdgeSlicker"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "Frank" => "472730949@qq.com" }
  # Or just: s.author    = "Frank"
  # s.authors            = { "Frank" => "472730949@qq.com" }
  # s.social_media_url   = "http://twitter.com/Frank"

  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/wolfcon/EdgeSlicker.git", :tag => "#{s.version}" }

  s.source_files  = "EdgeSlicker/*.{h,m}"
  # s.vendored_frameworks = "vendor"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
