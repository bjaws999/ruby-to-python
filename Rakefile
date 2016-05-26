require 'rake/testtask'
require_relative 'lib/RubyToPython.rb'

Rake::TestTask.new do |t|
    t.libs << "tests"
    t.test_files = FileList['tests/test*.rb']
    t.verbose = true
end

task :run, [:arg] do |t, arg|
    RubyToPython.run(arg[:arg].to_s)
end

task :invoke_run do
    Rake.application.invoke_task("run[test.rb]")
end