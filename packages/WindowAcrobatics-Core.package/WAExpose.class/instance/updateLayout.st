visualization
updateLayout
	
	self layoutInset: 50.
	
	self topLeft: self world topLeft.
	self extent: self world extent.
	self selectionRectangle delete.
	
	self fullBounds.
	self submorphBounds in: [:r |
		self layoutInset: (self width - r width // 2) @ (self height - r height // 2)].
	
	self addMorphBack: self selectionRectangle.
	self fullBounds.
	self selectWindow: self selectedWindow.
	
	self comeToFront.
	self visualization comeToFront.
	self grabKeyboard.