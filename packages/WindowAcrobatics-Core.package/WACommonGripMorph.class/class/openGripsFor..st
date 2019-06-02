as yet unclassified
openGripsFor: aCollection

	self allInstancesDo: #abandon.
	^ (self grips: aCollection)
		openInWorld;
		yourself