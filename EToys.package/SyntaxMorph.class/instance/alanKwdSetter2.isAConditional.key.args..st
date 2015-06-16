node to morph
alanKwdSetter2: aNode isAConditional: template key: key args: args
	"translates
		foo setHeading: 0
	to
		foo's heading := 0
	"
	| kwdHolder wordy |
	kwdHolder := self
		addToken: key
		type: #keywordSetter
		on: (SelectorNode new key: key code: nil "fill this in?").
	wordy := self translateToWordySetter: key.
	kwdHolder firstSubmorph 
		setProperty: #syntacticReformatting toValue: #keywordSetter;
		contents: wordy;
		emphasis: TextEmphasis bold emphasisCode.
	wordy = key asString ifFalse: [
		kwdHolder firstSubmorph 
			setProperty: #syntacticallyCorrectContents toValue: key asString].

	(args first asMorphicSyntaxIn: self) setConditionalPartStyle
			
