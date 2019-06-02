as yet unclassified
gapBetween: aGrid and: anotherGrid

	(aGrid isKindOf: BorderGripMorph) ifFalse: [^ 0].
	^ (aGrid position - anotherGrid position
		* (self dimensionWeightFor: aGrid orientation)) r
