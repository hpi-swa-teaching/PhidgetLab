pop ups
colorPatch
	"Return a color patch button that lets the user choose a color and modifies the code"
	| cc patch sel completeMsg |
	
	
	((self nodeClassIs: MessageNode) "or: [self nodeClassIs: SelectorNode]") ifFalse: [^ nil].
	(sel := self selector) ifNil: [^ nil].
	(Color colorNames includes: sel) | (sel == #r:g:b:) ifFalse: [^ nil].
		"a standard color name"
	completeMsg := self isNoun ifTrue: [self] 
				ifFalse: [owner isNoun ifTrue: [owner] ifFalse: [owner owner]].

	(cc := completeMsg try) class == Color ifFalse: [^ nil].
	patch := ColorTileMorph new colorSwatchColor: cc.
		"sends colorChangedForSubmorph: to the messageNode"
	patch color: Color transparent; borderWidth: 0.  patch submorphs last delete.
	^ patch