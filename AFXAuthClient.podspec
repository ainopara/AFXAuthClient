Pod::Spec.new do |s|
  s.name         = 'AFXAuthClient'
  s.version      = '1.2'
  s.summary      = 'AFNetworking Extension for XAuth Authentication.'
  s.homepage     = 'https://github.com/ainopara/AFXAuthClient'
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { 'Roman Efimov' => 'romefimov@gmail.com', 'Mattt Thompson' => 'm@mattt.me', 'Eric Johnson' => 'eric@semisecretsoftware.com' }
  s.source       = { :git => 'https://github.com/ainopara/AFXAuthClient.git', :tag => '1.2' }
  s.source_files = 'AFXAuthClient'
  s.requires_arc = true

  s.ios.deployment_target = '7.0'
  s.ios.frameworks = 'Security'

  s.osx.deployment_target = '10.9'

  s.dependency 'AFNetworking', '~> 3.0'
  s.prefix_header_contents = <<-EOS
#import <Availability.h>

#if __IPHONE_OS_VERSION_MIN_REQUIRED
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <MobileCoreServices/MobileCoreServices.h>
  #import <Security/Security.h>
#else
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <CoreServices/CoreServices.h>
  #import <Security/Security.h>
#endif
EOS
end
