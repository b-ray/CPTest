Pod::Spec.new do |s|
  s.name             = 'CPTest'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CPTest.'
  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/CPTest'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Stefan Puehringer' => 'stefan.puehringer@runtastic.com' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/CPTest.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'CPTest/Classes/**/*.{h,m}'
  
  s.subspec 'swift' do |swift|
      swift.ios.deployment_target = '8.0'
#      swift.tvos.deployment_target = '9.0' #this should not be needed, because it's inherited
      swift.source_files = 'CPTest/Classes/**/*.swift'
  end
end
