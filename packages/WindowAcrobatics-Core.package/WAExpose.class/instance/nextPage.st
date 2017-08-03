pages
nextPage
	
	self lastPage ifFalse: [
		self 
			deleteThumbnailsOnCurrentPage;
			changePageVisualizationTo: Color gray;
			currentPage: (self currentPage + 1);
			addThumbnailsToCurrentPage;
			selectWindow: ((self pageDict at: self currentPage) first);
			changePageVisualizationTo: Color white;
			updateLayout.
	].
	
