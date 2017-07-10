as yet unclassified
closeWindow

	self selectedWindow ifNotNil: [:thumbnail |
		(thumbnail valueOfProperty: #window) delete.

		self selectNextWindow.
		
		(self pageDict at: self currentPage) remove: thumbnail.
		
		self currentPage < self numberPages ifTrue: [self windowFromNextPage: self currentPage + 1. self addMorphBack: (self pageDict at: self currentPage) last].
		
		self selectedWindow == thumbnail
			ifTrue: [self numberPages = 1 ifTrue: [self delete. ^ self]
										    ifFalse: [self pageDict removeKey: self currentPage. self previousPage. ^self]].
		
		thumbnail delete.
		
		self updateLayout].