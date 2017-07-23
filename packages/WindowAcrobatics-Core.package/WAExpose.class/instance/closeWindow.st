windows-handling
closeWindow

	self selectedWindow ifNotNil: [:thumbnail |
		(thumbnail valueOfProperty: #window) delete.

		self selectNextWindow.
		
		(self pageDict at: self currentPage) remove: thumbnail.
		thumbnail delete.
		
		self lastPage ifTrue: [self selectedWindow == thumbnail ifTrue: [self firstPage ifTrue: [self delete. ^ self]  
				ifFalse: [self deletePageInVisualization: self currentPage. self pageDict removeKey: self currentPage. self previousPage. ^self]]]
		ifFalse: [self windowFromNextPage: self currentPage + 1. self addMorphBack: (self pageDict at: self currentPage) last].
		
		self updateLayout].