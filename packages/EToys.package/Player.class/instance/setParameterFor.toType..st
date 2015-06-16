costume
setParameterFor: aSelector toType: aTypeSymbol
	"Set the parameter type for the given selector"

	| aUniclassScript |
	aTypeSymbol isEmptyOrNil ifTrue: [^ self].
	(self typeforParameterFor: aSelector) = aTypeSymbol ifTrue: [^ self].
	aUniclassScript := self class scripts at: aSelector.
	aUniclassScript argumentVariables first variableType: aTypeSymbol.
	aUniclassScript currentScriptEditorDo:
		[:aScriptEditor | aScriptEditor assureParameterTilesValid].
	self updateAllViewersAndForceToShow: #scripts
	

