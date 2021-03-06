#
#  Be sure to run `pod spec lint Extenstions\AccessabilityId.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "Extenstions"
  spec.version      = "0.1.3"
  spec.summary      = "simple extenstion for adding accessability id for alert actions"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = "this pod should be used to add accessability id for alert actions when needed to provide the testing team a way to auomate the testing process"

  spec.homepage     = "https://nagwa-limited@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "mohamed elbohy" => "malbohy@gmail.com" }
  # Or just: spec.author    = "mohamed elbohy"
  # spec.authors            = { "mohamed elbohy" => "malbohy@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/mohamed elbohy"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  spec.platform     = :ios, "10.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { 
    :git => "https://nagwa-limited@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions", 
    :tag => "#{spec.version}" }
    # , :submodules => true }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "Extenstions/Extenstions/**/*"


# Sub Pods Section
  spec.subspec 'AccessabilityId' do |accessabilityId|
    accessabilityId.source_files   = 'AccessabilityId/AccessabilityId/**/*'
    accessabilityId.dependency 'Extenstions/UIView'
  end

  spec.subspec 'UIView' do |uiView|
    uiView.source_files   = 'UIView/UIView/**/*'
  end

  spec.subspec 'String' do |string|
    string.source_files   = 'String/String/**/*'
  end

  spec.subspec 'Bundle' do |bundle|
    bundle.source_files   = 'Bundle/Bundle/**/*'
  end

  spec.subspec 'Encodable' do |encodable|
    encodable.source_files   = 'Encodable/Encodable/**/*'
  end
  
  spec.subspec 'UILabel' do |uiLabel|
    uiLabel.source_files   = 'UILabel/Classes/**/*'
  end

  spec.subspec 'Float' do |float|
    float.source_files   = 'Float/Classes/**/*'
  end

  spec.subspec 'UIViewController' do |uiViewController|
    uiViewController.source_files   = 'UIViewController/Classes/**/*'
  end

  spec.subspec 'NSMutableAttributedString' do |nsMutableAttributedString|
    nsMutableAttributedString.source_files   = 'NSMutableAttributedString/Classes/**/*'
    nsMutableAttributedString.dependency 'Extenstions/String'
  end

  spec.subspec 'Decodable' do |decodable|
    decodable.source_files   = 'Decodable/Classes/**/*'
  end
  
  spec.subspec 'UITableView' do |uiTableView|
    uiTableView.source_files   = 'UITableView/Classes/**/*'
  end

  spec.subspec 'UIDevice' do |uiDevice|
    uiDevice.source_files   = 'UIDevice/Classes/**/*'
  end

spec.subspec 'FileManager' do |fileManager|
  fileManager.source_files   = 'FileManager/Classes/**/*'
end

spec.subspec 'UIScrollView' do |uiScrollView|
  uiScrollView.source_files   = 'UIScrollView/Classes/**/*'
end

spec.subspec 'UIImage' do |uiImage|
  uiImage.source_files   = 'UIImage/Classes/**/*'
end

spec.subspec 'URL' do |url|
  url.source_files   = 'URL/Classes/**/*'
end


spec.subspec 'AVPlayerExtenstions' do |aVPlayerExtenstions|
  aVPlayerExtenstions.source_files   = 'AVPlayerExtenstions/Classes/**/*'
end

spec.subspec 'UIApplication' do |url|
  url.source_files   = 'UIApplication/Classes/**/*'
end

spec.subspec 'Optional' do |url|
  url.source_files   = 'Optional/Classes/**/*'
end

  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
