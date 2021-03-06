lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "p_deepthought/version"

Gem::Specification.new do |spec|
  spec.name          = "p_deepthought"
  spec.version       = '0.0.1'
  spec.authors       = "Pierre-Yves Billette"
  spec.email         = "pbillett@students.42.fr"

  spec.summary       = "test gem p_deepthought"
  spec.description   = "a simple test gem p_deepthought"
  spec.homepage      = "http://rubygem.org/gems/p_deepthought"
  spec.license       = "MIT"
  spec.files         = ["lib/p_deepthought.rb"]

  #spec.metadata["allowed_push_host"] = "'http://mygemserver.com'"

  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "http://test.com/gitlab/p_deepthought"
  #spec.metadata["changelog_uri"] = "http://rubygem.org/gems/p_deepthought/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
