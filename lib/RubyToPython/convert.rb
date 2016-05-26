require_relative("pyfile.rb")
require_relative("line.rb")

class Convert
    attr_accessor :file, :pyfile

    def initialize(filepath)
        @file = File.new(filepath)
        @pyfile = PyFile.new(filepath,'w')
    end

    def syntaxConvert
        indent = 0
        @file.each_line do |line|
            temp = Line.new(line)
            indent = temp.convert(indent)
            @pyfile.write(temp.to_s+"\n")
        end
    end

    def delete
        @file.close
        @pyfile.close
    end

end