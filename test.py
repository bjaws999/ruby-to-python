class Shape:

	
	def __init__(self,sides):
		self.sides = sides
		if sides == 3:
			self.name = "Trigon"
		elif sides == 4:
			self.name = "Tetragon"
		elif sides == 5:
			self.name = "Pentagon"
		elif sides == 6:
			self.name = "Hexagon"
		elif sides == 7:
			self.name = "Heptagon"
		elif sides == 8:
			self.name = "Octogon"
		elif sides == 9:
			self.name = "Nonagon"
		elif sides == 10:
			self.name = "Decagon"
		else:
			self.name = str(self.sides) + "-gon"
			
		self.angle = (self.sides-2)*180
		
	
	

for i in range(3,12):
	a = Shape(i)
	print "Sides:\t" + str(a.sides) + "\nName:\t" + a.name + "\nAngle:\t" + str(a.angle)
	
