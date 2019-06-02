as yet unclassified
mouseMove: anEvent

	| delta |
	delta := self referencePoint ifNil: [0@0] ifNotNil: [anEvent position - self referencePoint].
	self referencePoint: anEvent position.
	self apply: delta.
	self bounds: (
		self bounds origin
			+ (delta * (self class dimensionWeightFor: self orientation))
		extent: self bounds extent).