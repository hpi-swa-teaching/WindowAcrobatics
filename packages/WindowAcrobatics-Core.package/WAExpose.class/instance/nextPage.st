pages
nextPage
	
	self isLastPage ifFalse: [
		self thumbnailsOnPage do: [:thmb|thmb delete].
	
		(self visualization submorphs at: self currentPage) color: Color gray.
			
		self currentPage: self currentPage + 1. 
	
		(self pageDict at: self currentPage) do: [:thmb | self addMorphBack: thmb].
	
		self selectWindow: (self pageDict at: self currentPage) first.
		
		(self visualization submorphs at: self currentPage) color: Color white.
			
		self updateLayout.
	].
	
