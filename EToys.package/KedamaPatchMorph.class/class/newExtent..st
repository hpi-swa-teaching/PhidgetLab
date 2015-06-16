instance creation
newExtent: aPoint

	| inst |
	inst := self new.
	inst newExtent: aPoint.
	^ inst.
