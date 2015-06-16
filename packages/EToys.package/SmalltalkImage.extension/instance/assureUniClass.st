*Etoys-copying
assureUniClass
	"Assure that the receiver has a uniclass.  Or rather, in this case, stop short of fulfilling such a request"

	self error: 'We do not want uniclasses descending from here'
