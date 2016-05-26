require_relative "RubyToPython/convert.rb"
class RubyToPython
    def self.run(arg)
        a = Convert.new(arg)
        a.syntaxConvert
        puts "File Converted Successfully!\n Output file:\t #{a.pyfile.path}"
    end
end