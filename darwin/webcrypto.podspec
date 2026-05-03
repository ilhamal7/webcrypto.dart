Pod::Spec.new do |s|
  s.name             = 'webcrypto'
  s.version          = '1.0.7' # Bypass version internal 0.1.1
  s.summary          = 'Security research placeholder for webcrypto.'
  s.description      = <<-DESC
This is a security research placeholder for the webcrypto library to prevent unauthorized dependency confusion. 
This package is currently under coordinated disclosure.
                       DESC
  s.homepage         = 'https://github.com/google/webcrypto.dart'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Security Research' => 'ilhamalazis741@gmail.com' }
  s.source           = { :git => 'https://github.com/ilhamal7/webcrypto.dart', :branch => 'master' }
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.source_files = 'Classes/**/*'
end
