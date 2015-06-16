*Etoys
arrowHeadFrom: prevPt to: newPt forPlayer: aPlayer
	"Put an arrowhead on the pen stroke from oldPt to newPt"
	
	| aSpec |
	(aPlayer notNil and: [(aSpec := aPlayer costume renderedMorph valueOfProperty: #arrowSpec) notNil]) 
		ifFalse:
			[aSpec := Preferences parameterAt: #arrowSpec "may well be nil"].
	self arrowHeadFrom: prevPt to: newPt arrowSpec: aSpec