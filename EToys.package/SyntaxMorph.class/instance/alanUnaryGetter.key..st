node to morph
alanUnaryGetter: aNode key: key
	"I am a MessageNode.  Fill me with a SelectorNode {getX} whose string is {'s x}.  All on one level."

	| selSyn usm wordy |
	selSyn := self
		addToken: key
		type: #unaryGetter
		on: (SelectorNode new key: key code: nil "fill this in?").
	usm := selSyn firstSubmorph.
	usm setProperty: #syntacticReformatting toValue: #unaryGetter.
	wordy := self translateToWordyGetter: key.
	wordy = key asString ifFalse: [
		usm setProperty: #syntacticallyCorrectContents toValue: key asString].
	usm contents: wordy; emphasis: TextEmphasis bold emphasisCode.
