Pod::Spec.new do |s|
  s.name = 'CybridApiBankSwift'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.123.676'
  s.source = { :git => "https://github.com/Cybrid-app/cybrid-api-bank-swift.git", :tag => "v#{s.version}" }
  s.authors = 'Cybrid Technology Inc.'
  s.license = { :type => "Apache-2.0", :file => "LICENSE"}
  s.homepage = 'https://github.com/Cybrid-app/cybrid-api-bank-swift'
  s.summary = 'Cybrid iOS Bank API'
  s.description = 'Cybrid Bank API for Swift'
  s.source_files = 'CybridApiBankSwift/APIClient/**/*.swift'
  # -------
end
