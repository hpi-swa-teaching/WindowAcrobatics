as yet unclassified
updateLayout

	self topLeft: self world topLeft.
	self extent: self world extent.
	
	selectionRectangle delete.
	arrowDown delete.
	arrowUp delete. 
	
	self fullBounds.
	
	self submorphBounds in: [:r |
		self layoutInset: (self width - r width // 2) @ (self height - r height // 2)].
	
	Transcript show: self submorphBounds; cr.
	Transcript show: self layoutInset; cr.
	self addMorphBack: selectionRectangle.
	
	self fullBounds.
	
	self currentPage < self numberPages ifTrue: [self addMorphFront: arrowDown].
	self currentPage > 1 ifTrue: [self addMorphFront: arrowUp].
	self selectWindow: self selectedWindow.

	self comeToFront.
	self grabKeyboard.