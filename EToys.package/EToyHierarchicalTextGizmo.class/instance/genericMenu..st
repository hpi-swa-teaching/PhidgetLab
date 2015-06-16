as yet unclassified
genericMenu: aMenu

	| menu |

	currentSelection ifNil: [
		aMenu add: '*nothing selected*' target: self selector: #yourself.
		^aMenu
	].
	menu := DumberMenuMorph new defaultTarget: self.
	menu 
		add: 'expand all below me' target: self selector: #expandAllBelow;
		add: 'addChild' target: self selector: #addChild;
		add: 'delete' target: self  selector: #deleteSelectedItem.
	^ menu