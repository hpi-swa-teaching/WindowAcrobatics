pages
previousPage
	
	self firstPage ifFalse: [
		
		self thumbnailsOnPage ifNotEmpty: [self deleteThumbnailsOnCurrentPage. self equatePageInVisualization].

		self currentPage: self currentPage - 1. 
	
		self addThumbnailsToCurrentPage.
	
		self selectWindow: (self pageDict at: self currentPage) last.
		
		self highlightPageInVisualiszation.
			
		self updateLayout.
	].