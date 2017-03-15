#
# Be sure to run `pod lib lint TouchableSlider.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TouchableSlider'
  s.version          = '1.0.0'
  s.summary          = 'TouchableSlider is a tapable UISlider.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TouchableSlider is a tapable / touchable UISlider.
It lets the user touch any part of the slider and generate a ValueChanged event.
                       DESC

  s.homepage         = 'https://github.com/false/TouchableSlider'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tanguy G' => 'tanguy.gourvez@gmail.com' }
  s.source           = { :git => 'https://github.com/false/TouchableSlider.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TouchableSlider/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TouchableSlider' => ['TouchableSlider/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
