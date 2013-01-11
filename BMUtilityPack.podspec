Pod::Spec.new do |s|
  s.name         = "BMUtilityPack"
  s.version      = "0.8"
  s.summary      = "Useful custom objects and functions."
  s.homepage     = "https://github.com/jeffreycamealy/BMUtilityPack.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jeffrey Camealy" => "jcamealy@gmail.com" }
  s.source       = { :git => "https://github.com/jeffreycamealy/BMUtilityPack.git", :tag => "0.8" }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
#  s.source_files = 'BMUtilityPack/Utilities/**/*.{h,m}'

	utilities_path = 'BMUtilityPack/Utilities/'
	source_files_path = '/*.{h,m}'

	ss = 'BMNSBundleUtilities'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

	ss = 'BMColors'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

	ss = 'BMDebugUtilities'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

	ss = 'BMDispatch'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

	ss = 'BMInitMacros'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

	ss = 'BMSelectorButton'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

	ss = 'UITableView+Utilities'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

	ss = 'UIView+FrameManipulation'
	s.subspec ss do |colors|
		colors.source_files = utilities_path + ss + source_files_path
	end

end
