other
insertUniversalTilesForClass: aClass selector: aSelector
	"Add a submorph which holds the universal-tiles script for the given class and selector"

	| source tree syn widget header |
	source := aClass sourceCodeAt: aSelector ifAbsent: [
		Transcript cr; show: aClass name, 'could not find selector ', aSelector.
		^ self delete].    
	tree := Compiler new 
		parse: source 
		in: aClass 
		notifying: nil.
	(syn := tree asMorphicSyntaxUsing: SyntaxMorph)
		parsedInClass: aClass.
	aSelector numArgs = 0 ifTrue: [
		"remove method header line"
		(header := syn findA: SelectorNode) ifNotNil: [header delete]].
	syn removeReturnNode.		"if ^ self at end, remove it"
	widget := syn inAScrollPane.
	widget hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent;
		setProperty: #hideUnneededScrollbars toValue: true.
	self addMorphBack: widget.
	(self hasProperty: #autoFitContents) ifFalse:
		[self valueOfProperty: #sizeAtHibernate ifPresentDo:
			[:oldExtent | self extent: oldExtent]].
	syn finalAppearanceTweaks.