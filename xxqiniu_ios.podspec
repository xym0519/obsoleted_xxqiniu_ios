Pod::Spec.new do |s|
  s.name             = "xxqiniu_ios"
  s.version          = "0.0.1"
  s.summary          = "personal qiniu uploader."
  s.description      = <<-DESC
                       an arc qiniu cloud storage uploader
                       DESC
  s.homepage         = "https://github.com/xym0519/xxqiniu_ios"
  s.license          = 'MIT'
  s.author           = { "Broche Xu" => "xym0519@gmail.com" }
  s.source       = { :git => "https://github.com/xym0519/xxqiniu_ios.git", :tag => "0.0.1" }
  s.platform     = :ios
  s.requires_arc = true

  s.source_files = 'Classes'
  s.dependency 'SBJson', '~> 3.2'
  s.dependency 'ASIHTTPRequest', '~> 1.8.1'
end
