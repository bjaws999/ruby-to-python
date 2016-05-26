class Line
    attr_accessor :line

    def initialize(line)
        @line = line
    end

    def convert(indent = 0)
        @line.strip!
        @line.gsub!('true','True')
        @line.gsub!('false','False')
        @line.gsub!('nil','None')
        @line.gsub!('initialize(','__init__(self,')
        @line.gsub!('initialize','__init__(self)')
        @line.gsub!(/(\S+)\.to_s/,'str(\1)')
        @line.gsub!('@','self.')
        @line.gsub!('puts','print')
        @line.gsub!(/(\d+)\.\.(\d+)/,'range(\1,\2)')
        @line.gsub!(".new","")
        if @line.start_with?("attr_accessor")
            @line = ""
        elsif @line.start_with?("class","def","for","if","while")
            @line << ":"
            @line = ("\t" * indent) + @line
            indent += 1
        elsif @line.start_with?("end")
            @line = ""
            @line = ("\t" * indent) + @line
            indent -= 1
        elsif @line.start_with?("else","elsif")
            @line.gsub!('elsif','elif')
            @line << ":"
            @line = ("\t" * (indent - 1)) + @line
        else
            @line = ("\t" * indent) + @line
        end
        return indent
    end

    def to_s
        return @line
    end
end