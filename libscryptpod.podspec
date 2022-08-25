Pod::Spec.new do |s|
  s.name             = 'libscryptpod'
  s.version          = '1.21.0'
  s.summary          = 'A shared library that implements scrypt() functionality - a replacement for bcrypt()'
  s.description      = <<-DESC
  A shared library that implements scrypt() functionality - a replacement for bcrypt()
  This one sets :DEFINES_MODULE => "YES"
                       DESC
  s.homepage         = 'https://github.com/normanzb/libscrypt-podspec'
  s.license          = { :type => 'BSD', :file => 'libscrypt/LICENSE' }
  s.author           = { 'technion' => 'https://lolware.net' }
  s.source           = { :git => 'https://github.com/normanzb/libscrypt-podspec.git', :tag => 'v' + s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = "libscrypt/*.{h,c}"
  s.exclude_files = "libscrypt/main.c"
  s.public_header_files = 'libscrypt/libscrypt.h'

  s.pod_target_xcconfig = {
    'GCC_OPTIMIZATION_LEVEL' => "2",
    'DEFINES_MODULE' => "YES",
  }
end
