code generation
storeCodeOn: aStream indent: tabCount 
	"Generate code for an assignment statement.  The code generated looks presentable in the case of simple assignment, though the code generated for the increment/decrement/multiply cases is still the same old assignGetter... sort for now"
aStream nextPutAll: (assignmentRoot asSetterSelector).
			aStream space."Simple assignment, don't need existing value"
	assignmentSuffix = ':' 

		ifFalse: 
			["Assignments that require that old values be retrieved"

			
			self assignmentReceiverTile storeCodeOn: aStream indent: tabCount.
			aStream space.
			aStream nextPutAll: (assignmentRoot asGetterSelector).
			aStream space.
			aStream nextPutAll: (self operatorForAssignmentSuffix: assignmentSuffix).
			aStream space]