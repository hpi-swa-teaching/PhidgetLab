instance creation
loginAndDo: aBlock ifCanceled: cancelBlock
	"EtoyLoginMorph loginAndDo:[:n| true] ifCanceled:[]"
	| me |
	(me := self new)
		name: 'your name' actionBlock: aBlock cancelBlock: cancelBlock;
		fullBounds;
		position: Display extent - me extent // 2;
		openInWorld.
	me position: me position + (0@40).