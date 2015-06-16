code generation
kedamaStoreCodeAsPixelValueOn: aStream indent: tabCount

	aStream nextPutAll: ((colorSwatch color pixelValueForDepth: 32) bitAnd: 16rFFFFFF) printString.
