as yet unclassified
grips: aCollection

	| bounds |
	grips := aCollection asSet.
	(grips allSatisfy: [:g | g isKindOf: BorderGripMorph])
		ifTrue: [	orientation := (grips collect: #orientation) singleOne].
	cursor := (grips collect: #resizeCursor) hasSingle
		ifTrue: [grips anyOne resizeCursor]
		ifFalse: [Cursor crossHair].
	bounds := grips collect: #bounds.
	self bounds: ((bounds collect: #origin) min
		corner: (bounds collect: #corner) max).