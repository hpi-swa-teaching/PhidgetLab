access
myMorph
	"Answer the morph that serves as the costume of my associated player.  If for some reason I have no associated player, answer nil"

	| aPlayer |
	^ (aPlayer := self playerScripted) ifNotNil: [aPlayer costume]