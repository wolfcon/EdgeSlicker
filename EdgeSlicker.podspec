Pod::Spec.new do |s|

  s.name         = "EdgeSlicker"
  s.version      = "1.0.3"
  s.summary      = "Hide tab bar or other similar view on edge"
  s.description  = <<-DESC
                   Hide tab bar or other similar view on edge
                   DESC, usage is in https://github.com/wolfcon/EdgeSlicker

  s.homepage     = "https://github.com/wolfcon/EdgeSlicker"

  s.license      = "MIT"

  s.author             = { "Frank" => "472730949@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/wolfcon/EdgeSlicker.git", :tag => "#{s.version}" }

  s.source_files  = "EdgeSlicker/*.{h,m}"

end
