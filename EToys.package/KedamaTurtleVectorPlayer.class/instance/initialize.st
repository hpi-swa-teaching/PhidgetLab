initialization
initialize

	super initialize.
	info := IdentityDictionary new.
	info at: #who put: 1.
	info at: #x put: 2.
	info at: #y put: 3.
	info at: #heading put: 4.
	info at: #color put: 5.
	info at: #visible put: 6.
	info at: #normal put: 7.

	arrays := Array new: 7.
	arrays at: (info at: #who) put: (WordArray new: 0).
	arrays at: (info at: #x) put: (KedamaFloatArray new: 0).
	arrays at: (info at: #y) put: (KedamaFloatArray new: 0).
	arrays at: (info at: #heading) put: (KedamaFloatArray new: 0).
	arrays at: (info at: #color) put: (WordArray new: 0).
	arrays at: (info at: #visible) put: (ByteArray new: 0).
	arrays at: (info at: #normal) put: (KedamaFloatArray new: 0).

	types := Array new: 64.

	types at: 1 put: #Integer.
	types at: 2 put: #Number.
	types at: 3 put: #Number.
	types at: 4 put: #Number.
	types at: 5 put: #Color.
	types at: 6 put: #Boolean.
	types at: 7 put: #Number.

	whoTableValid := false.
	turtleMapValid := false.


