# -*- encoding: utf-8 -*-
require File.expand_path('../lib/time_spec/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["lg2046"]
  gem.email         = ["lg2046@gmail.com"]
  gem.description   = %q{用于测试时固定时间}
  gem.summary       = %q{用于测试时固定时间}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "time_spec"
  gem.require_paths = ["lib"]
  gem.version       = TimeSpec::VERSION
end
