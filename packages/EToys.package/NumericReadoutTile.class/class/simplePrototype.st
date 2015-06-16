instance creation
simplePrototype
	"Bare number readout.  Will keep up to data with a number once it has target, getterSelector, setterSelector."

	^ (UpdatingStringMorph new) contents: '5'; growable: true; setToAllowTextEdit; 
		step; fitContents; setNameTo: 'Number (bare)'; markAsPartsDonor