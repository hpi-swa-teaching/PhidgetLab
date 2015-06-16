copying
veryDeepInner: deepCopier
	"Special code that handles user-added instance variables of a uniClass.
	Copy all of my instance variables.  Some need to be not copied at all, but shared.  This is special code for the dictionary.  See DeepCopier."
	| instVar weak subAss |

	super veryDeepInner: deepCopier.
	"my own instance variables are completely normal"
	costume := costume veryDeepCopyWith: deepCopier.
	costumes := costumes veryDeepCopyWith: deepCopier.

	Player instSize + 1 to: self class instSize do: [:index |
		instVar := self instVarAt: index.
		weak := instVar isMorph | instVar isPlayerLike. 
		(subAss := deepCopier references associationAt: instVar ifAbsent: [nil])
				"use association, not value, so nil is an exceptional value"
			ifNil: [weak ifFalse: [
					self instVarAt: index put: (instVar veryDeepCopyWith: deepCopier)]]
			ifNotNil: [self instVarAt: index put: subAss value].
		].
