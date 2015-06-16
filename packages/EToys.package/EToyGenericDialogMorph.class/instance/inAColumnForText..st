as yet unclassified
inAColumnForText: someMorphs 
	^ (self inAColumn: someMorphs) hResizing: #shrinkWrap;
		 color: ColorTheme current dialogTextBoxColor;
		 borderColor: ColorTheme current dialogTextBoxBorderColor;
		 borderWidth: ColorTheme current dialogButtonBorderWidth;
		 useRoundedCorners