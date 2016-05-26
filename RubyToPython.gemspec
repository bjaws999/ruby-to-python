# coding: utf-8
lib = File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name          = "RubyToPython"
    spec.version       = '0.0'
    spec.authors       = ["Eli David Sadoff"]
    spec.email         = ["snood1205@gmail.com"]
    spec.summary       = %q{Converts ruby code to python}
    spec.description   = %q{This is an open source project which converts Ruby code to Python. It is currently in Pre-Alpha development which means it should be used at the risk of the user. There is no guarantee that this will work for you nor should you try to use this for anything major at this project's current state.}
    spec.homepage      = "https://github.com/snood1205/ruby-to-python"
    spec.license       = "Apache License 2.0"

    spec.files         = ['lib/RubyToPython.rb']
    spec.executables   = ['RubyToPython']
    spec.test_files    = ['tests/test_RubyToPython.rb']
    spec.require_paths = ["lib"]
end
