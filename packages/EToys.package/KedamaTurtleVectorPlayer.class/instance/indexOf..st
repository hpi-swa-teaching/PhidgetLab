enumeration
indexOf: who

	| whoArray |
	whoTableValid ifTrue: [^ whoTable at: (who - whoTableBase)].

	whoArray := arrays at: 1.

	whoArray size = 0 ifTrue: [^ 0].

	whoTableBase := whoArray first - 1.
	whoTable := WordArray new: whoArray last - whoTableBase.
	1 to: whoArray size do: [:w |
		whoTable at: (whoArray at: w) - whoTableBase put: w.
	].
	whoTableValid := true.

	^ whoTable at: (who - whoTableBase).

