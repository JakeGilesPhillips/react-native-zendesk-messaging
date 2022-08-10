require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'RNZendeskMessaging'
  s.version        = package['version']
  s.summary        = package['description']
  s.license        = package['license']
  s.authors        = package['author']
  s.homepage       = package['homepage']
  s.platform       = :ios, '10.0'
  s.source         = { git: "https://github.com/dropless/react-native-zendesk-messaging.git", tag: "v#{s.version}" }
  s.requires_arc   = true

  s.framework    = 'Foundation'
  s.framework    = 'UIKit'

  s.dependency 'React'
  s.dependency 'ZendeskSDKMessaging'
end
