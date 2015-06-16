*Etoys-tiles
explanation

	self isSelfPseudoVariable ifTrue: [^'the pseudo variable <self> (refers to the receiver)'].
	^(#('instance' 'temporary' 'LIT3' 'global') 
			at: self type 
			ifAbsent: ['UNK',self type printString]),' variable <',self name,'>'
		

	"LdInstType := 1.
	LdTempType := 2.
	LdLitType := 3.
	LdLitIndType := 4.
"

