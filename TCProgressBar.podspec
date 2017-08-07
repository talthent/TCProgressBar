Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.name = "TCProgressBar"
    s.summary = "Simple and clean progress bar."
    s.requires_arc = true

    s.version = "0.1.0"

    s.license = { :type => "MIT", :file => "LICENSE" }

    s.author = { "Tal Cohen" => "talthent@gmail.com" }

    # s.homepage = "[Your RWPickFlavor Homepage URL Goes Here]"

    s.source = { :git => "https://github.com/talthent/TCProgressBar.git", :tag => "#{s.version}"}

    s.source_files = "TCProgressBar/**/*.{swift}"

end
