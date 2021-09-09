#
# Be sure to run `pod lib lint LYZMediaBrowser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LYZMediaBrowser'
  s.version          = '1.0.1'
  s.summary          = 'iOS image browser / iOS 图片浏览器'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        iOS 图片浏览器，功能强大，易于拓展，极致的性能优化和严格的内存控制让其运行更加的流畅和稳健。
                       DESC

  s.homepage         = 'https://github.com/liuyaozong1/LYZMediaBrowser'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '648731281@qq.com' => '648731281@qq.com' }
  s.source           = { :git => 'https://github.com/liuyaozong1/LYZMediaBrowser.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.requires_arc = true
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'LYZMediaBrowser/Classes/YBImageBrowser/**/*.{h,m}','LYZMediaBrowser/Classes/Video/*.{h,m}'
  
  s.resources    = 'LYZMediaBrowser/Classes/Video/YBImageBrowserVideo.bundle','LYZMediaBrowser/Classes/YBImageBrowser/YBImageBrowser.bundle'
  s.exclude_files = 'LYZMediaBrowser/Classes/YBImageBrowser/WebImageMediator/YBIBDefaultWebImageMediator.{h,m}'
  
  # s.resource_bundles = {
  #   'LYZMediaBrowser' => ['LYZMediaBrowser/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'LYZYYImage'
   s.dependency 'SDWebImage', '>= 5.0.0'
end
