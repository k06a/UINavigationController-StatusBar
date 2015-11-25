Pod::Spec.new do |s|
  s.name         = "UINavigationController-StatusBar"
  s.version      = "0.0.3"
  s.summary      = "UINavigationController with overloaded methods to provide child status bar state"
  s.description  = <<-DESC
                   A longer description of UINavigationController-StatusBar in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.homepage     = "https://github.com/k06a/UINavigationController-StatusBar"
  s.license      = "MIT"
  s.author             = { "Anton Bukov" => "k06aaa@gmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/k06a/UINavigationController-StatusBar.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "*.{h,m}"
  s.requires_arc = true
  s.dependency "JRSwizzle"
end
