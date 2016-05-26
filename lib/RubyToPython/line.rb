class Line
    attr_accessor :line

    def initialize(line)
        @line = line
    end

    def convert(indent = 0)
        @line.strip!
        if @line.start_with?("class","def","for","if","while")
            @line << ":"
            @line = ("\t" * indent) + @line
            indent += 1
        elsif @line.start_with?("end")
            @line = ""
            @line = ("\t" * indent) + @line
            indent -= 1
        elsif @line.start_with?("else","elsif")
            @line[2..-1] = @line[3..-1] if @line.start_with?("elsif")
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