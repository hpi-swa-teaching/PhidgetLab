initialization
initPhidget: aPhidHandle withLabel: aLabel
	
	ports := OrderedCollection new.
	super initPhidget: aPhidHandle withLabel: aLabel.	
	bin color: self color lighter lighter.