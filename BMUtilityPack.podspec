Pod::Spec.new do |s|
  s.name         = "BMUtilityPack"
  s.version      = "0.1"
  s.summary      = "Useful custom objects and functions."
  s.homepage     = "https://github.com/jeffreycamealy/BMUtilityPack.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jeffrey Camealy" => "jcamealy@gmail.com" }
  s.source       = { :git => "https://github.com/jeffreycamealy/BMUtilityPack.git", :tag => "0.1" }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.source_files = 'BMUtilityPack/**/*.{h,m}'
end
