#
# Be sure to run `pod lib lint 2DLiveSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '2DLiveSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of 2DLiveSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wudijimao/2DLiveSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wudijimao' => 'wuximiao@rd.netease.com' }
  s.source           = { :git => 'https://github.com/wudijimao/2DLiveSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.subspec 'Core' do |sp|
    sp.source_files = '2DLiveSDK/CubismSdkForNative/Core/include/**/*'
    sp.ios.vendored_library = '2DLiveSDK/CubismSdkForNative/Core/lib/ios/Release-iphoneos/libLive2DCubismCore.a'
  end
  
  s.subspec 'FrameworkCore' do |sp|
#    sp.public_header_files = '2DLiveSDK/CubismSdkForNative/Framework/src/Type/*.{h,hpp}',
#                             '2DLiveSDK/CubismSdkForNative/Framework/src/Id/*.{h,hpp}'
    sp.source_files = '2DLiveSDK/CubismSdkForNative/Framework/src/**/*'
    sp.exclude_files = "2DLiveSDK/CubismSdkForNative/Framework/src/Rendering/**/*"
#    sp.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"$(SRCROOT)/2DLiveSDK/CubismSdkForNative/Framework/src/"' }
    sp.requires_arc = false
  end
  
  s.subspec 'FrameworkMetal' do |sp|
    sp.public_header_files = '2DLiveSDK/CubismSdkForNative/Framework/src/Rendering/Metal/**/*.{h,hpp}'
    sp.source_files = '2DLiveSDK/CubismSdkForNative/Framework/src/Rendering/Metal/**/*'
    sp.requires_arc = false
  end
  
  # s.resource_bundles = {
  #   '2DLiveSDK' => ['2DLiveSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
