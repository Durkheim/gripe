
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gripe/version"

Gem::Specification.new do |spec|
  spec.name          = "gripe"
  spec.version       = Gripe::VERSION
  spec.authors       = ["Durkheim"]
  spec.email         = ["mosesyk.dev.bootcamp@gmail.com"]

  spec.summary       = %q{Griping}
  spec.description   = %q{A gem to gripe}
  spec.homepage      = "https://github.com/Durkheim/gripe.git"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
