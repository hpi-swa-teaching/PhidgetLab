initialization
initPhidget: aPhidHandle withLabel: aLabel
	
	ports := OrderedCollection new.
	bin := self createBin.
	super initPhidget: aPhidHandle withLabel: aLabel.	
	bin color: self color lighter lighter.
		
	phidHandle
		on: #Attach do: [ self setLabel: (aLabel, ' (', self serialNumber asString, ')')];
		on: #Detach do: [self setLabel: aLabel. self detach].
	