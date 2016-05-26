class Shape
    attr_accessor :sides, :name, :angle

    def initialize(sides)
        @sides = sides
        if sides == 3
            @name = "Trigon"
        elsif sides == 4
            @name = "Tetragon"
        elsif sides == 5
            @name = "Pentagon"
        elsif sides == 6
            @name = "Hexagon"
        elsif sides == 7
            @name = "Heptagon"
        elsif sides == 8
            @name = "Octogon"
        elsif sides == 9
            @name = "Nonagon"
        elsif sides == 10
            @name = "Decagon"
        else
            @name = @sides.to_s + "-gon"
        end
        @angle = (@sides-2)*180
    end

end

for i in 3..12
    a = Shape.new(i)
    puts "Sides:\t" + a.sides.to_s + "\nName:\t" + a.name + "\nAngle:\t" + a.angle.to_s
end