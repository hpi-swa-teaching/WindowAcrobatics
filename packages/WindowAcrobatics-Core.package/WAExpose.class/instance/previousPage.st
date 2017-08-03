pages
previousPage
	
	self firstPage ifFalse: [
		self thumbnailsOnPage 
			ifNotEmpty: [self deleteThumbnailsOnCurrentPage; changePageVisualizationTo: Color gray].
		self
			currentPage: (self currentPage - 1);
			addThumbnailsToCurrentPage;
			selectWindow: ((self pageDict at: self currentPage) last);
			changePageVisualizationTo: Color white;
			updateLayout.
	].