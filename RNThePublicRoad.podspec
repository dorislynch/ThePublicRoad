
Pod::Spec.new do |s|
  s.name         = "RNThePublicRoad"
  s.version      = "1.0.1"
  s.summary      = "RNThePublicRoad"
  s.description  = <<-DESC
                  RNThePublicRoad
                   DESC
                   s.homepage     = "https://github.com/dorislynch/ThePublicRoad"
                   s.license      = "MIT"
                   # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
                   s.author             = { "author" => "author@domain.cn" }
                   s.platform     = :ios, "7.0"
                   s.source       = { :git => "https://github.com/dorislynch/ThePublicRoad.git", :tag => "master" }
                   s.source_files  = "ios/**/*.{h,m}"
                   s.requires_arc = true
                 
                 
                   s.dependency "React"
                   s.dependency 'UMCommon'
                   s.dependency 'UMDevice'
                   s.dependency 'UMAPM'
                   s.dependency 'JJException'
  #s.dependency "others"

end

  