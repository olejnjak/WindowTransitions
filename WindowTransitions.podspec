Pod::Spec.new do |s|
    s.name             = 'WindowTransitions'
    s.version          = '0.3'
    s.summary          = 'Set of basic UIWindow transitions'
    s.description      = <<-DESC
    Simplify UIWindow transitions using shorthand methods
    DESC
    s.homepage         = 'https://github.com/olejnjak/WindowTransitions'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Jakub Olejník' => 'olejnjak@gmail.com' }
    s.social_media_url = "https://twitter.com/olejnjak"
    s.source           = { :git => 'https://github.com/olejnjak/WindowTransitions.git', :tag => s.version.to_s }
    s.ios.deployment_target = '9.0'
    s.source_files     = 'WindowTransitions/*.swift'
    s.swift_version    = '5.0'
end
