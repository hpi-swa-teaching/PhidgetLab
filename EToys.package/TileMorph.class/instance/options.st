accessing
options
	"Answer the options of the tile for an arrow"
	(type == #literal
			and: [literal isKindOf: Boolean])
		ifTrue: [^ {{true. false}. #('true' 'false' )}].
	operatorOrExpression
		ifNil: [^ nil].
	(ScriptingSystem arithmeticalOperatorsAndHelpStrings first includes: operatorOrExpression)
		ifTrue: [^ ScriptingSystem arithmeticalOperatorsAndHelpStrings].
	(ScriptingSystem numericComparitorsAndHelpStrings first includes: operatorOrExpression)
		ifTrue: [self receiverType = #Number
				ifTrue: [^ ScriptingSystem numericComparitorsAndHelpStrings]
				ifFalse: [^ #(#(#= #~=) #('equal' 'not equal') )]].
	^ nil