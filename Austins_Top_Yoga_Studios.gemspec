lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Austins_Top_Yoga_Studios/version"

Gem::Specification.new do |spec|
  spec.name          = "Austins_Top_Yoga_Studios"
  spec.version       = AustinsTopYogaStudios::VERSION
  spec.authors       = ["'grant smith'"]
  spec.email         = ["'grantsmith1256@gmail.com'"]
  
  spec.summary       = %q{"Top Yoga Stuidos to Visit in Austin"}
  spec.description   = %q{"Austin, Tx is a remarkable place of creativity and an array of vibes! Eighteen yoga studios have been selected and will be given a descrption to find which one you would like to visit most upon wanting to learn more."}
  spec.homepage      = "https://github.com/gsmith77/Austins_Top_Yoga_Studios"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["Austins_Top_Yoga_Studios"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'gem-release', '~> 0'
  spec.add_dependency 'nokogiri', '~> 0'
  
end
