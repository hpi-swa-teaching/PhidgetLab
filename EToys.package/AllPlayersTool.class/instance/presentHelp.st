menus
presentHelp
	"Sent when a Help button is hit; provide the user with some form of help for the tool at hand"

	| aString aTextMorph |
	aString := 'About the Gallery of Players

Click on an object''s picture to reveal its location.
Click on the turquoise eye to open the object''s viewer.
Click on an object''s name to obtain a tile representing the object.   

Double-click on the title ("Gallery of Players") to refresh the tool;
this may allow you to see newly-added or newly-scripted objects.'.
	aTextMorph :=  TextMorph new contents: aString translated.
	aTextMorph useRoundedCorners; borderWidth: 3; borderColor: Color gray; margins: 3@3.
	aTextMorph backgroundColor: Color blue muchLighter.
	aTextMorph beAllFont: (StrikeFont familyName: #ComicBold size: 18);
	 centered; lock.
	AlignmentMorph new beTransparent
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorphBack: aTextMorph;
		openInHand