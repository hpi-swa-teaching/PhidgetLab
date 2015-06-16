player and selector look up
getPlayersMessage: aMessageNode for: obj into: aCollection

	
	((Array with: aMessageNode receiver), aMessageNode arguments) do: [:stmt | | thisPlayer |
		(stmt isMemberOf: MessageNode) ifTrue: [
			self getPlayersMessage: stmt for: obj into: aCollection.
		].
		(stmt isMemberOf: BlockNode) ifTrue: [
			self getPlayersBlock: stmt for: obj into: aCollection..
		].
		(stmt isMemberOf: VariableNode) ifTrue: [
			thisPlayer := Compiler evaluate: stmt name for: obj.
			(thisPlayer isKindOf: Player) ifTrue: [aCollection add: stmt].
		].
	].
