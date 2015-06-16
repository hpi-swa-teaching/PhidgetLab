as yet unclassified
insertCardOfBackground
	"Prompt the user for choice of a background, and insert a new card of that background"

	| bgs aBackground |
	(bgs := self backgrounds) size = 1 ifTrue:
		[self inform: 
'At this time, there IS only one kind of
background in this stack, so that''s
what you''ll get' translated.
		^ self insertCard].
	aBackground := UIManager default
		chooseFrom: (bgs collect: [:bg | bg externalName])
		values: bgs.
	aBackground ifNotNil:
		[self insertCardOfBackground: aBackground]