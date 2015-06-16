tile protocol
storeCodeOn: aStream indent: tabCount 
	"We have a hidden arg. Output two keywords with interspersed arguments."

"	| parts |

	parts := operatorOrExpression keywords.
	aStream nextPutAll: parts first.
	aStream space.
	patchTile submorphs first storeCodeOn: aStream indent: tabCount.
	aStream space.
	aStream nextPutAll: ' to: '.
"

	aStream nextPutAll: 'setPatchValueIn:'.
			aStream space."Simple assignment, don't need existing value"
	patchTile submorphs first storeCodeOn: aStream indent: tabCount.
	aStream nextPutAll: ' to: '.

	assignmentSuffix = ':' 
		ifFalse: 
			["Assignments that require that old values be retrieved"

			aStream nextPutAll: '( '.
			self assignmentReceiverTile storeCodeOn: aStream indent: tabCount.
			aStream space.
			aStream nextPutAll: 'getPatchValueIn:'.
			patchTile submorphs first storeCodeOn: aStream indent: tabCount.
			aStream nextPutAll: ')'.
			aStream space.
			aStream nextPutAll: (self operatorForAssignmentSuffix: assignmentSuffix).
			aStream space]