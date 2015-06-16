as yet unclassified
mouseMove: evt in: aMorph

	| start tuple project url pvm |
	start := aMorph valueOfProperty: #mouseDownPoint ifAbsent: [^self].
	(start dist: evt cursorPoint) abs < 5 ifTrue: [^self].
	aMorph removeProperty: #mouseDownPoint.
	evt hand hasSubmorphs ifTrue: [^self].
	tuple := aMorph valueOfProperty: #projectParametersTuple ifAbsent: [^self].
	project := tuple fourth first.
	(project notNil and: [project world notNil]) ifTrue: [
		^evt hand attachMorph: (ProjectViewMorph on: project).
	].
	url := tuple third.
	url isEmptyOrNil ifTrue: [^self].
	pvm := ProjectViewMorph new.
	pvm
		project: (DiskProxy global: #Project selector: #namedUrl: args: {url});
		lastProjectThumbnail: tuple second.
	evt hand attachMorph: pvm.
