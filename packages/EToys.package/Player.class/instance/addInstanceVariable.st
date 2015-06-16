slots-user
addInstanceVariable
	"Offer the user the opportunity to add an instance variable, and if he goes through with it, actually add it."

	| itsName initialValue typeChosen usedNames initialAnswer setterSelector originalString |
	usedNames := self class instVarNames.

	initialAnswer := Utilities keyLike: ('var' translated, (usedNames size + 1) asString)  satisfying: [:aKey | (usedNames includes: aKey) not].

	originalString := UIManager default request: 'name for new variable: ' translated initialAnswer: initialAnswer.
	originalString isEmptyOrNil ifTrue: [^ self].
	itsName := ScriptingSystem acceptableSlotNameFrom: originalString forSlotCurrentlyNamed: nil asSlotNameIn: self world: self costume world.

 	itsName size = 0 ifTrue: [^ self].	
	self assureUniClass.
	typeChosen := self initialTypeForSlotNamed: itsName.
	self slotInfo at: itsName put: (SlotInformation new initialize type: typeChosen).
	initialValue := self initialValueForSlotOfType: typeChosen.
	self addInstanceVarNamed: itsName withValue: initialValue.
	self compileInstVarAccessorsFor: itsName.
	setterSelector := itsName asSetterSelector.
	((self class allSubInstances copyWithout: self) reject: [:e | e isSequentialStub]) do:
		[:anInstance | anInstance perform: setterSelector with: initialValue].
	self updateAllViewersAndForceToShow: ScriptingSystem nameForInstanceVariablesCategory