windows-handling
closeWindow

	self selectedWindow ifNotNil: [:thumbnail |
		(thumbnail valueOfProperty: #window) delete.

		self selectNextWindow.
		
		(self pageDict at: self currentPage) remove: thumbnail.
		thumbnail delete.
		
		((self lastWindowOnPage: thumbnail) and: [self numberPages = 1]) ifTrue: [self delete. ^self].
		((self lastWindowOnPage: thumbnail) and: [self lastPage]) ifTrue: [self deletePageInVisualization: self currentPage. self pageDict removeKey: self currentPage. self previousPage. ^self].
		
		self windowFromNextPage: self currentPage + 1. self addMorphBack: (self pageDict at: self currentPage) last.
		
		self updateLayout].