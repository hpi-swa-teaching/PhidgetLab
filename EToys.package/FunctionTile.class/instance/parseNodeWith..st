code generation
parseNodeWith: encoder

	| phrase player costume sel |
	sel := submorphs first operatorOrExpression.
	sel == #random ifFalse: [^ self basicParseNodeWith: encoder].
	phrase := self outermostMorphThat: [:m| m isKindOf: PhraseTileMorph].
	phrase ifNil: [^ self basicParseNodeWith: encoder].

	player := phrase associatedPlayer.
	player ifNil: [^ self basicParseNodeWith: encoder].

	costume := player costume.
	costume ifNil: [^ self basicParseNodeWith: encoder].

	(player isKindOf: KedamaExamplerPlayer) ifTrue: [
		^ self kedamaParseNodeWith: encoder actualObject: player costume renderedMorph kedamaWorld player].

	(costume renderedMorph isMemberOf: KedamaMorph) ifTrue: [
		^ self kedamaParseNodeWith: encoder actualObject: self].

	^ self basicParseNodeWith: encoder.
