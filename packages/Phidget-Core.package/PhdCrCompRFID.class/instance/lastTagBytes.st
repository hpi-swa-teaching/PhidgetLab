accessing
lastTagBytes
	"Returns a byte array with the 5 elements of the tag ID that was last read by the sensor.
	This tag may or may not still be on the reader.
	If there was no tag read by the reader since opened, the method returns a Byte array with zeros.
	If the Phidget is not attached return nil."
	
	phidget isAttached ifFalse: [ ^ nil ].
	^ self class primGetLastTag: phidget id