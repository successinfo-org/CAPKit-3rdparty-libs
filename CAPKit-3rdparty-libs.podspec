Pod::Spec.new do |s|
  s.name         = "CAPKit-3rdparty-libs"
  s.version      = "0.1.2"
  s.summary      = "CAPKit-3rdparty-libs library."
  s.description  = <<-DESC
                   libevent, openssl, libcurl, tor, c-ares, mcrypt, mhash, sqlcipher, lame.
                   DESC
  s.homepage     = "https://github.com/successinfo-org/CAPKit-3rdparty-libs"
  s.license      = "MIT"
  s.author       = { "samchang" => "sam.chang@me.com" }
  s.platform     = :ios, "6.0.0"
  s.source       = { :git => "https://github.com/successinfo-org/CAPKit-3rdparty-libs.git", :tag => "v#{s.version}" }
  s.libraries     = "stdc++.6.0.9"
  s.header_mappings_dir = "src"
  s.public_header_files = 'src/*.h', 'src/**/*.{h}'
  s.source_files  = 'src/*.{h}', 'src/**/*.{h}'
  s.preserve_paths = 'src/*.{h,c}', 'src/**/*.{h}'
  s.compiler_flags  = '-DSQLITE_HAS_CODEC'

  s.ios.vendored_libraries = 'lib/*.a'
  s.requires_arc = false

end
