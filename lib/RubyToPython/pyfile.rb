class PyFile < File

    def initialize(filepath, opts='r')
        super(filepath.split(".")[0]+".py", opts)
    end

end