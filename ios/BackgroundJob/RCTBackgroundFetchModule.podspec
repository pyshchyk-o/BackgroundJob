Pod::Spec.new do |s|
  s.name         = "RCTBackgroundFetchModule"
  s.version      = "0.0.1"
  s.summary      = "A short description of RCTBackgroundFetchModule."

  s.description  = <<-DESC
                   An optional longer description of RCTBackgroundFetchModule
                   DESC

  s.homepage     = "http://EXAMPLE/RCTBackgroundFetchModule"
  s.license      = "MIT"
  s.author             = { "Your Name" => "your@email.com" }
  s.platform     = :ios, "10.0"

  s.source       = { :path => "." }
  s.source_files  = "RCTBackgroundFetchModule.{h,m}"

  s.requires_arc = true

  s.dependency 'React'
end
