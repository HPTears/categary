#
# Be sure to run `pod lib lint XKCornerRadius.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XKCategary'
  s.version          = '1.0.5'
  s.summary          = 'A description of XKCategary.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod +1
                       DESC

  s.homepage         = 'https://github.com/sy5075391'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sy5075391' => '447523382@qq.com' }
  s.source           = { :git => 'http://git.xksquare.com/XK-iOS-Component/XKCategary.git'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'UIView' do |ss|
    ss.source_files = 'Component/Classes/UIView/*.{h,m}'
  end
  s.subspec 'Font' do |ss|
    ss.source_files = 'Component/Classes/Font/*.{h,m}'
  end
  s.subspec 'NSObject' do |ss|
    ss.source_files = 'Component/Classes/NSObject/*.{h,m}'
  end
  s.subspec 'UIImage' do |ss|
    ss.source_files = 'Component/Classes/UIImage/*.{h,m}'
  end
  s.subspec 'NSString' do |ss|
    ss.source_files = 'Component/Classes/NSString/*.{h,m}'
  end
  s.subspec 'NSDate' do |ss|
    ss.source_files = 'Component/Classes/NSDate/*.{h,m}'
  end
  # s.resource_bundles = {
  #   'XKCornerRadius' => ['XKCornerRadius/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
