# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-azuresearch"
  gem.version       = File.read("VERSION").strip
  gem.authors       = ["Yoichi Kawasaki"]
  gem.email         = ["yoichi.kawasaki@outlook.com"]
  gem.summary       = %q{Azure Search output plugin for Fluentd}
  gem.description   = gem.summary
  gem.homepage      = "http://github.com/yokawasa/fluent-plugin-azuresearch"
  gem.license       = "Apache-2.0"
  gem.has_rdoc       = false

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|gem|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.11"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "test-unit"
  gem.add_development_dependency "rest-client"
  gem.add_runtime_dependency "fluentd"
end

