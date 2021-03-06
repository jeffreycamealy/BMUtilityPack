Pod::Spec.new do |s|

	version = '1.1.01'

	s.name         = "BMUtilityPack"
	s.version      = version
	s.summary      = "Useful custom objects and functions."
	s.homepage     = "https://github.com/jeffreycamealy/BMUtilityPack.git"
	s.license      = { :type => 'MIT', :file => 'LICENSE' }
	s.author       = { "Jeffrey Camealy" => "jcamealy@gmail.com" }
	s.source       = { :git => "https://github.com/jeffreycamealy/BMUtilityPack.git", :tag => version }
	s.platform     = :ios, '5.0'


	# Subspecs

	utilities_path = 'BMUtilityPack/Utilities/'
	source_files_path = '/*.{h,m}'

	s.source_files = utilities_path + 'BMUtilityPack.h'

	subspec_name = 'BMColors'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'BMDebugUtilities'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'BMDispatch'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'BMInitMacros'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'BMLaunchArguments'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'BMSelectorButton'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'BMNSBundleUtilities'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'UIImageView+Utilities'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'UITableView+Utilities'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

	subspec_name = 'UIView+FrameManipulations'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end


	subspec_name = 'VTPG_Common'
	s.subspec subspec_name do |ss|
		ss.source_files = utilities_path + subspec_name + source_files_path
		ss.requires_arc = true
	end

end
