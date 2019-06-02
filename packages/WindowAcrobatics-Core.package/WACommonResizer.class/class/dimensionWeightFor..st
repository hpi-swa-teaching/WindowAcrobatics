as yet unclassified
dimensionWeightFor: anOrientationSymbol

	anOrientationSymbol ifNil: [^ 1@1].
	^ (anOrientationSymbol = #vertical) asBit
			@
		(anOrientationSymbol = #horizontal) asBit