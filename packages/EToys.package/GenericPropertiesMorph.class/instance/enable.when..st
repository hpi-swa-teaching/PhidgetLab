as yet unclassified
enable: aMorph when: aBoolean

	aBoolean = (aMorph hasProperty: #disabledMaskColor) ifFalse: [^self].
	aBoolean ifTrue: [
		aMorph 
			removeProperty: #disabledMaskColor;
			lock: false;
			changed.
		^self
	].
	aMorph 
		setProperty: #disabledMaskColor toValue: (Color black alpha: 0.5);
		lock: true;
		changed
