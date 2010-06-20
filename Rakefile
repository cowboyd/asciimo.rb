require 'rubygems'
require 'lib/asciimo'
Gem::Specification.new do |gem|
  $gemspec = gem
  gem.name = gem.rubyforge_project = "asciimo"
  gem.version = Asciimo::VERSION
  gem.summary = "create awesome ascii art with ruby"
  gem.description = "uses asciimo.js to generate colored ascii art text in 300+ fonts. It can be used from the commandline or inside Ruby code."
  gem.email = "cowboyd@thefrontside.net"
  gem.homepage = "http://github.com/cowboyd/asciimo.rb"
  gem.authors = ["Charles Lowell"]
  gem.executables = ["asciimo"]
  gem.require_paths = ["lib"]
  gem.add_dependency "therubyracer", ">= 0.7.4"
  gem.files = Rake::FileList.new("**/*").tap do |manifest|
    manifest.exclude "**/*.gem"
  end
end

desc "Build gem"
task :gem => :gemspec do
  Gem::Builder.new($gemspec).build
end

desc "build the gemspec"
task :gemspec => :clean do
  File.open("#{$gemspec.name}.gemspec", "w") do |f|
    f.write($gemspec.to_ruby)
  end
end

task :clean do
  sh "rm -rf *.gem"
end



for file in Dir['tasks/*.rake']
  load file
end


