events
attach
	"Use a higher change trigger by default, because the view would flicker to much."

	phidHandle changeTrigger: 0.1.
	self updateGyroMorph.