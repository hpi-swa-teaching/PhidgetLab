initialization
createAndAddSubmorphs
	"create and add bin"
	
	super createAndAddSubmorphs.
	bin := self createBin.
	self addMorph: bin.