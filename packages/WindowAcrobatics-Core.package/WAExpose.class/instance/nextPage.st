pages
nextPage
	
	self lastPage ifFalse: [
	
		self deleteThumbnailsOnCurrentPage.
		
		self equatePageInVisualization.
			
		self currentPage: self currentPage + 1. 
	
		self addThumbnailsToCurrentPage.
	
		self selectWindow: (self pageDict at: self currentPage) first.
		
		self highlightPageInVisualiszation.
			
		self updateLayout.
	].
	
