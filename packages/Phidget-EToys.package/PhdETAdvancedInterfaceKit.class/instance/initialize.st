initialization
initialize

	| aLabel |
	
	aLabel := 'adv. Interface Kit'.
	super initialize.
	ports := OrderedCollection new.
	self createConnectorArrays.
	phidHandle := PhdCrInterfaceKit new.
	bin := self createBin.
	serialNumber := nil.
	labelMorph := StringMorph new font: (TextStyle default fontAt: 2) emphasis: 1.
	
	self
		setLabel: aLabel;
		width: 305;
		height: 130;
		color: Color white.
				
	"open the phidget, so that it's ready to be used.
	Do NOT do this if we are just creating a dummy instance for thumbnail creation."
	thumbnailCreation ifFalse: [ phidHandle openAny ].
	
	bin color: self color lighter lighter.
	self createAndAddSubmorphs.

	self setupEventsWith: aLabel.