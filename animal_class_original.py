class Animal:
	#Constructor
	def __init__(self, species, lifespan, weight):
		self.species = species
		self.lifespan = lifespan
		self.weight = weight

	def move(self):
		print(f'This {self.species} is moving around.')

	def sleep(self):
		print(f'This {self.species} is getting some rest.')

	def reproduce(self):
		print(f'This {self.species} is NOT getting some rest.')
	
	def eat(self, what, how_much):
		print(f'This {self.species} is eating {what}.')
		self.weight += how_much


sid = Animal('derpy sloth', 10988021, 40)
sid.move()
sid.sleep()
sid.reproduce()

flash = Animal('three-toed sloth', 12123, 20)
flash.sleep()
flash.eat('exhaust fumes', 3)
