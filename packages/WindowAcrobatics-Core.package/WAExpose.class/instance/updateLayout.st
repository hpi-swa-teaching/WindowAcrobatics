as yet unclassified
updateLayout

	self topLeft: self world topLeft.
	self extent: self world extent.
	selectionRectangle delete.
	self numberPages > 1 ifTrue: [ arrowDown delete ].
	self currentPage > 1 ifTrue: [arrowUp delete ]. 
	
	self fullBounds.
	
	self submorphBounds in: [:r |
		self layoutInset: (self width - r width // 2) @ (self height - r height // 2)].
	
	self addMorphBack: selectionRectangle.
	self currentPage < self numberPages ifTrue: [self addMorphFront: arrowDown].
	self currentPage > 1 ifTrue: [self addMorphFront: arrowUp].
	
	self fullBounds.
	self selectWindow: self selectedWindow.

	self comeToFront.
	self grabKeyboard.