
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "harry_potter/version"

Gem::Specification.new do |spec|
  spec.name          = "harry_potter"
  spec.version       = HarryPotter::VERSION
  spec.authors       = ["'Alyssa Watson'"]
  spec.email         = ["'alyssa.s.watson@gmail.com'"]

  spec.summary       = %q{A gem that will give you more information on characters from the Harry Potter books.}
  spec.description   = %q{This is a gem that take information from the Harry Potter books through an api and provides a way to navigate through the characters and learn more about them.}
  spec.homepage      = "https://github.com/alyssaswatson/harry-potter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
