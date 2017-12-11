Pod::Spec.new do |s|
  s.name             = 'swsecp256k1'
  s.version          = '0.1.0'
  s.summary          = 'An library of secp256k1 that can be used in iOS project.'
  s.description      = <<-DESC
Based an optimized C library for EC operations on curve secp256k1, [bitcoin-core/secp256k1](https://github.com/bitcoin-core/secp256k1)
Optimized C library for EC operations on curve secp256k1.
This library is a work in progress and is being used to research best practices.
                       DESC

  s.homepage         = 'https://github.com/skywinder/swsecp256k1'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'skywinder' => 'sky4winder@gmail.com' }
  s.source           = { :git => 'https://github.com/skywinder/swsecp256k1.git', :tag => s.version.to_s }

  s.ios.deployment_target = '6.0'
  s.source_files = 'swsecp256k1/framework/secp256k1-umbrella.h', 'swsecp256k1/framework/swsecp256k1.modulemap'
  s.ios.vendored_frameworks = 'swsecp256k1/framework/secp256k1.framework'
  s.public_header_files = 'swsecp256k1/framework/secp256k1.framework/Versions/A/Headers/*.h'
end
