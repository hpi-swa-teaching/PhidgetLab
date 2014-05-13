initialization
initialize
	super initialize.
	self borderWidth: 1;
		 borderColor: Color transparent;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 labelMorph: (StringMorph contents: 'Check Box');
		 checkedMorph: (self class defaultCheckedMorph: self labelMorph);
		 unCheckedMorph: (self class defaultUnCheckedMorph: self labelMorph);
		 switchToUnChecked;
		 color: Color gray;
		 yourself