accessing
cleanUpString: stringSubMorph

	
	^ stringSubMorph 
		valueOfProperty: #syntacticallyCorrectContents 
		ifAbsent: [ | style rawData |
			style := stringSubMorph valueOfProperty: #syntacticReformatting.
			rawData := stringSubMorph contents.
			 (#(unary tempVariableDeclaration blockarg2 methodHeader1 tempVariable variable) includes: style) ifTrue: [
				rawData := self unSpaceAndUpShift: rawData appending: nil.
			].
			style == #keywordGetz ifTrue: [
				rawData := self unSpaceAndUpShift: rawData appending: 'Getz:'.
			].
			style == #keywordSetter ifTrue: [
				rawData := self unSpaceAndUpShift: 'set ',rawData appending: ':'.
			].
			style == #unaryGetter ifTrue: [
				rawData := self unSpaceAndUpShift: 'get ',rawData appending: nil.
			].
			(#(keyword2 methodHeader2) includes: style)  ifTrue: [
				rawData := self unSpaceAndUpShift: rawData appending: ':'.
			].
			rawData
		]
