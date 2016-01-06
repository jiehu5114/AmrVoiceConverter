#
# Be sure to run `pod lib lint AmrVoiceConverter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AmrVoiceConverter"
  s.version          = "0.1.0"
  s.summary          = "AmrVoiceConverter."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                         A VoiceConverter between AMR format and WAV format
                       DESC

  s.homepage         = "https://github.com/jiehu5114/AmrVoiceConverter"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "胡杰" => "jiehu5114@gmail.com" }
  s.source           = { :git => "https://github.com/jiehu5114/AmrVoiceConverter.git", :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = false

  s.source_files = ['*.{h,m}','**/*.{h,m}']
  #s.resources = ["*.{xib}","Resources/*.{png}"]
  s.vendored_libraries = "**/*.a"


  #s.resource_bundles = {
  #  'SJAVKit' => ['Resources/*.png’,’*.{xib}’]
  #}

  #s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  #依赖系统库
  #s.frameworks = 'UIKit','AVFoundation'

  #依赖第三方库
  #s.dependency 'AFNetworking'
  #s.dependency 'SCRecorder'

  # s.dependency 'AFNetworking', '~> 2.3'
end
