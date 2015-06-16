*etoys
checkStream: aStream 
	(aStream isNil
			or: [aStream size = 0])
		ifFalse: [^ false].
	ProgressNotification signal: '9999 about to enter
project'.
	"the hard part is over"
	self inform: 'It looks like a problem occurred while
getting this project. It may be temporary,
so you may want to try again,' translated.
	^ true