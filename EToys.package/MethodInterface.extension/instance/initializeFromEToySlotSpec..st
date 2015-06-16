*Etoys
initializeFromEToySlotSpec: tuple
	"tuple holds an old etoy slot-item spec, of the form found in #additionsToViewerCategories methods.   Initialize the receiver to hold the same information"

	| setter |
	selector := tuple seventh.
	self
		wording: (ScriptingSystem wordingForOperator: tuple second);
		helpMessage: tuple third.

	receiverType := #Player.
	resultSpecification := ResultSpecification new.
	resultSpecification resultType: tuple fourth.
	(#(getNewClone getTurtleAt: getTurtleOf: "seesColor: isOverColor:") includes: selector)
		ifTrue:
			[self setNotToRefresh]  "actually should already be nil"
		ifFalse:
			[self setToRefetch].

	((tuple fifth == #readWrite) and: [((tuple size >= 9) and: [(setter := tuple at: 9) ~~ #unused])]) ifTrue:
		[resultSpecification companionSetterSelector: setter].
		
"An example of an old slot-item spec:
(slot numericValue 'A number representing the current position of the knob.' number readWrite Player getNumericValue Player setNumericValue:)
	1	#slot
	2	wording
	3	balloon help
	4	type
	5	#readOnly or #readWrite
	6	#Player (not used -- ignore)
	7	getter selector
	8	#Player (not used -- ignore)
	9	setter selector
"
	