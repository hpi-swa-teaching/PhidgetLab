access
floatPrecision
	"Answer the floatPrecision for the slot:
		1.0 ->	show whole number
		0.1	->	show one digit of precision
		.01 ->	show two digits of precision
		etc.
	Initialize the precision to 1 if it is not present"

	^ floatPrecision isNumber ifTrue: [floatPrecision] ifFalse: [floatPrecision := 1]