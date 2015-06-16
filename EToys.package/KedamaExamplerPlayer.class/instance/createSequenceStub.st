subclass players management
createSequenceStub

	| class |
	class := self class createSequencialStubSubclass.
	sequentialStub := class new.
	sequentialStub kedamaWorld: kedamaWorld.
	sequentialStub examplerPlayer: self.
	sequentialStub turtles: turtles.
