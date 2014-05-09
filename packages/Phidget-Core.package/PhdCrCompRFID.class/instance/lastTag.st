accessing
lastTag
	"Returns a string which represents a hex-value of the 5 bytes tag ID last read by the sensor.
	This tag may or may not still be on the reader.
	If there was no tag read by the reader since attached, the method returns a string with 10 zeros.
	If the Phidget with this component is not attached return an empty string."
	
	| aString bytes |
	aString := ''.
	bytes := self lastTagBytes.
	bytes ifNotNil: [
		bytes do: [ :byte | aString := aString , byte hex ] ].
	^ aString