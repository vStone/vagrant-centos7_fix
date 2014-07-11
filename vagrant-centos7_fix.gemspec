# coding: utf-8
$:.unshift File.expand_path('../lib', __FILE__)
require 'vagrant-centos7_fix/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-centos7_fix"
  spec.version       = VagrantPlugins::Centos7Fix::VERSION
  spec.authors       = ["Jan Vansteenkiste"]
  spec.email         = ["jan@vstone.eu"]
  spec.summary       = %q{Fix networking for CentOS 7.}
  spec.description   = %q{Uses Fedora network scripts on CentOS 7.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
