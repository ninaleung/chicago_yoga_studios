# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chicago_yoga_studios/version'

Gem::Specification.new do |spec|
  spec.name          = "chicago_yoga_studios"
  spec.version       = ChicagoYogaStudios::VERSION
  spec.authors       = ["Nina Leung"]
  spec.email         = ["nleung320@gmail.com"]

  spec.summary       = %q{Wraps Chicago business license API with only yoga studios.}
  spec.description   = %q{Wraps Chicago business license API with only yoga studios. See more at https://data.cityofchicago.org/resource/uupf-x98q.json?$q=yoga}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency "unirest", "~>1.1.2"
end
