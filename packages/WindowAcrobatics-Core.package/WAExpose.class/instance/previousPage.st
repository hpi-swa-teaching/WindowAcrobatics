as yet unclassified
previousPage
	
	self currentPage > 1 ifTrue: [
		self thumbnailsOnPage do: [:thmb|thmb delete].
	
		self currentPage: self currentPage - 1. 
	
		(self pageDict at: self currentPage) do: [:thmb | self addMorphBack: thmb].
	
		self selectWindow: (self pageDict at: self currentPage) last.
	
		self updateLayout.
	].