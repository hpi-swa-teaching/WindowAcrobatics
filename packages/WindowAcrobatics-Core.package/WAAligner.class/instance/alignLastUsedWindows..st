handling
alignLastUsedWindows: aNumber

	aNumber <= 2 ifTrue: [ ^ self alignLastTwoWindows ].
	aNumber <= 4 
		ifTrue: [ ^ self alignLastFourWindows ]
		ifFalse: [ ^ self alignLastSixWindows ]. 