as yet unclassified
closeWindow

	self selectedWindow ifNotNil: [:thumbnail |
		(thumbnail valueOfProperty: #window) delete.

		self selectNextWindow.
		
		(self pageDict at: self currentPage) remove: thumbnail.
		
		thumbnail delete.
		
		self isLastPage ifFalse: [self windowFromNextPage: self currentPage + 1. self addMorphBack: (self pageDict at: self currentPage) last] 
		ifTrue: [
			" check whether there is only one window left "
			self selectedWindow == thumbnail 
			ifTrue: [self isFirstPage
				ifTrue: [self delete. ^ self]  
				ifFalse: [self deletePageNumberAt: self currentPage. self pageDict removeKey: self currentPage. self previousPage. ^self]]
			].
		
		self updateLayout].