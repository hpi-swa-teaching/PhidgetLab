as yet unclassified
colorPickerFor: target getter: getterSymbol setter: setterSymbol 
	^ NewColorPickerMorph useIt
		ifTrue:
			[ NewColorPickerMorph
				on: target
				originalColor: (target perform: getterSymbol)
				setColorSelector: setterSymbol ]
		ifFalse:
			[ ColorPickerMorph new
				 initializeForPropertiesPanel ;
				 target: target ;
				 selector: setterSymbol ;
				 originalColor: (target perform: getterSymbol) ]