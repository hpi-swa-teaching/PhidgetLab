private
convertAlignment
	"Convert the receiver's alignment rules"
	| where frame |
	owner ifNotNil:[
		owner class == TilePadMorph ifTrue:[
			owner layoutPolicy: TableLayout new.
			owner hResizing: #shrinkWrap.
			owner vResizing: #spaceFill.
		].
	].
	self layoutPolicy: TableLayout new.
	self cellInset: 2@0.
	self layoutInset: 1@0.
	self listDirection: #leftToRight.
	self wrapCentering: #center.
	self hResizing: #shrinkWrap.
	self vResizing: #spaceFill.
	"Now convert up and down arrow"
	(upArrow notNil and:[upArrow owner == self "e.g., not converted"
		and:[downArrow notNil and:[downArrow owner == self]]]) ifTrue:[
			"where to insert the frame"
			where := (submorphs indexOf: upArrow) min: (submorphs indexOf: downArrow).
			frame := Morph new color: Color transparent.
			frame 
				layoutPolicy: TableLayout new;
				listDirection: #topToBottom;
				hResizing: #shrinkWrap; 
				vResizing: #shrinkWrap;
				cellInset: 0@1;
				layoutInset: 0@1.
			self privateAddMorph: frame atIndex: where.
			frame addMorphBack: upArrow; addMorphBack: downArrow.
		].
