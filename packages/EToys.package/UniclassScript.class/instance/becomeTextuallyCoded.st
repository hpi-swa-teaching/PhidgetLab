textually coded
becomeTextuallyCoded
	"Transform the receiver into one which is textually coded"

	isTextuallyCoded := true.
	lastSourceString := (playerClass compiledMethodAt: selector) decompileString 		"Save this to compare when going back to tiles"