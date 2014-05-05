scrolling
expandString: aString toMinLength: length
	"Expands the given string through concating it with itself until its length is exact or greater than the given length.
	 Assumes that the given string is not empty!"
	
	| expandedText |
	self assert: [ aString size > 0 ].
	
	expandedText := ''.
	[ expandedText size < length ] whileTrue: [
		expandedText := expandedText , aString asString ].	
		
	^ expandedText