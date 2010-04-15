#Encoding: UTF-8
require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "habl"
    gem.summary = %Q{Shorten your XBEL by writing markup haiku.}
    gem.description = %Q{This library simply renders markup haikus to xml
before parsing it with XBEL. See http://github.com/boof/xbel and
http://en.wikipedia.org/wiki/XBEL for more information about XBEL and
http://haml-lang.com/ for Haml.}
    gem.email = "florian.assmann@email.de"
    gem.homepage = "http://github.com/boof/habl"
    gem.authors = ["Florian Aßmann"]
    gem.add_dependency "xbel", ">= 0.2.6"
    gem.add_dependency "haml", ">= 2.2.23"
    gem.add_development_dependency "riot", ">= 0"
    gem.add_development_dependency "yard", ">= 0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
