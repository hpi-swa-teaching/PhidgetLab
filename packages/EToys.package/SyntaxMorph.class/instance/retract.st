pop ups
retract
	"replace this message with its receiver.  I am the message node."
	| rec cascade msg |
	(self nodeClassIs: CascadeNode) ifTrue:
		["This is a piece of a cascaded message -- just delete it"
		self deletePopup.
		cascade := owner.
		self delete.
		cascade setSelection: {cascade. nil. cascade}.
		^ cascade acceptIfInScriptor].
	self deletePopup.
	(rec := self receiverNode)
		ifNil: [msg := owner.
			rec := owner receiverNode.
			msg owner replaceSubmorph: msg by: rec]
		ifNotNil: [owner replaceSubmorph: self by: rec].
	rec setSelection: {rec. nil. rec}.
	rec acceptIfInScriptor.