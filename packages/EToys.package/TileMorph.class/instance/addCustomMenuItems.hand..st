misc
addCustomMenuItems:  aMenu hand: aHandMorph
	"Add custom halo menu items to a menu"

	| aPlayer |
	super addCustomMenuItems: aMenu hand: aHandMorph.
	((aPlayer := self associatedPlayer) notNil and:
		[aPlayer costume isMorph]) ifTrue:
			[aMenu addLine.
			aMenu add: 'hand me this object' translated target: self action: #handReferentMorph.
			aMenu balloonTextForLastItem: 'This tile refers to an actual graphical object; use this menu item to grab that object.  Caution!  This may remove the object from a place it really ought to stay.' translated.
			aMenu addLine ]