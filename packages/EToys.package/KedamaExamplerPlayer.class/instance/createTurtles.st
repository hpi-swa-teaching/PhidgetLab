subclass players management
createTurtles

	turtles := self class createTurtleSubclass new.
	turtles kedamaWorld: kedamaWorld.
	turtles exampler: self.
	^ turtles.
