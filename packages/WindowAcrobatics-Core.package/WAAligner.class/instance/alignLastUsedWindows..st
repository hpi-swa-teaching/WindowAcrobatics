as yet unclassified
alignLastUsedWindows: aNumber

	aNumber <= 2 ifTrue: [self alignLastTwoWindows. ^ true].
	aNumber <= 4 ifTrue: [self alignLastFourWindows. ^ true] ifFalse: [self alignLastSixWindows]. 