
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll/recipe/parser/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-recipe-parser"
  spec.version       = Jekyll::Recipe::Parser::VERSION
  spec.authors       = ["Wayne Graham"]
  spec.email         = ["wgraham@clir.org"]

  spec.summary       = %q{TODO: A Jekyll plugin to automate encoding recipes in the h-recipe format.}
  spec.description   = %q{TODO: A Jekyll plugin for food bloggers to helpto automate encoding recipes in the h-recipe format.}
  spec.homepage      = "http://github.com/waynegraham/jekyll-recipe-parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", "~> 3.3"
  spec.add_dependency('little-recipe-parser', '~> 0.1.2')

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "0.51"
end
