initialization
buildForPlayer: aPlayer getter: aGetter 
	"Build up basic structure"
	| aColor |
	self
		player: aPlayer
		variableName: aGetter inherentSelector.
	aColor := Color
				r: 0.387
				g: 0.581
				b: 1.0.
	self listDirection: #leftToRight;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 color: aColor;
		 layoutInset: -1;
		 borderWidth: 1;
		 borderColor: aColor darker;
		 listCentering: #center.
	self
		addMorphBack: (self buildReadout: aGetter)