as yet unclassified
updateLayout
	
	self layoutInset: 50.
	
	self topLeft: self world topLeft.
	self extent: self world extent.
	
	selectionRectangle delete.
	arrowDown delete.
	arrowUp delete. 
	
	self fullBounds.

	self submorphBounds in: [:r |
		self layoutInset: (self width - r width // 2) @ (self height - r height // 2)].
	
	self addMorphBack: selectionRectangle.
	
	self fullBounds.
	
	self isLastPage ifFalse: [self addMorphFront: arrowDown].
	self isFirstPage ifFalse: [self addMorphFront: arrowUp].
	
	self selectWindow: self selectedWindow.
	
	self comeToFront.
	self visualization comeToFront.
	self grabKeyboard.