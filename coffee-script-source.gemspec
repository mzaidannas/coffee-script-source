require 'rubygems'
require 'json'

version = JSON.parse(File.read('package.json'))["version"]
date = Time.at(1612166431)

warn "#{version} at #{date}"

gemspec = Gem::Specification.new do |s|
  s.name      = 'coffee-script-source'
  s.version   = version
  s.date      = date

  s.homepage    = "http://coffeescript.org"
  s.summary     = "The CoffeeScript Compiler"
  s.description = <<-EOS
    CoffeeScript is a little language that compiles into JavaScript.
    Underneath all of those embarrassing braces and semicolons,
    JavaScript has always had a gorgeous object model at its heart.
    CoffeeScript is an attempt to expose the good parts of JavaScript
    in a simple way.
  EOS

  s.metadata["source_code_uri"] = "https://github.com/rails/ruby-coffee-script/blob/master/script/build-source-gem"

  s.files = [
    'lib/coffee_script/coffee-script.js',
    'lib/coffee_script/source.rb'
  ]

  s.authors           = ['Jeremy Ashkenas']
  s.email             = 'jashkenas@gmail.com'
  s.rubyforge_project = 'coffee-script-source'
  s.license           = "MIT"
end
