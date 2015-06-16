*Etoys-tiles
addCommentToMorph: aMorph
	| row |
	(self comment isNil or: [self comment isEmpty]) ifTrue: [^ self].
	row := aMorph addTextRow:
		(String streamContents: [:strm | self printCommentOn: strm indent: 1]).
	row firstSubmorph color: (SyntaxMorph translateColor: #comment).
	row parseNode: (self as: CommentNode).
