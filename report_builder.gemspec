Gem::Specification.new do |s|
  s.name        = 'report_builder'
  s.version     = '0.1.2'
  s.bindir      = 'bin'
  s.executables << 'report_builder'
  s.date        = '2016-03-17'
  s.summary     = 'ReportBuilder'
  s.description = 'Merge Cucumber JSON reports and build single HTML Test Report'
  s.post_install_message = 'Happy reporting!'
  s.authors     = ['Rajat Thareja']
  s.email       = 'rajat.thareja.1990@gmail.com'
  s.homepage    = 'https://github.com/rajatthareja/ReportBuilder'
  s.license     = 'MIT'
  s.required_ruby_version =  '>= 1.9.1'
  s.requirements << 'Cucumber >= 2.1.0 test results in JSON format'
  
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(pkg|spec)/}) or f.match(%r{(Gemfile|Rakefile|.gitignore|\.gemspec)}) }
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files  = s.files.grep(%r{^(spec)/})
  # s.files       = Dir['lib/*.rb','lib/*.rake','vendor/assets/stylesheets/*.css','vendor/assets/javascripts/*.js','README.md']

  s.add_runtime_dependency 'builder', '~>3.2', '>= 3.2.2'
  s.add_runtime_dependency 'json', '~>1.8', '>= 1.8.1'

  s.add_development_dependency 'rspec', '>= 3.0.0'

end