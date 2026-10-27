Pod::Spec.new do |s|
  s.name             = 'APIVerveCountryCallingCode'
  s.version          = '1.2.3'
  s.summary          = 'Country Calling Code is a phone number country code API that looks up international dialing codes and official names from a two-letter...'
  s.description      = <<-'DESC'
Country Calling Code is a phone number country code API that looks up international dialing codes and official names from a two-letter ISO country code. It returns an array of calling prefixes and standard country identifiers.

This iOS/macOS SDK provides a convenient way to access the Country Calling Code from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/callingcode?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/callingcode-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveCountryCallingCode/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
