as yet unclassified
previousPage
	
	self thumbnailsOnPage do: [:thmb|thmb delete].
	
	self currentPage: self currentPage - 1. 
	
	(self pageDict at: self currentPage) do: [:thmb | self addMorphBack: thmb].
	
	self selectWindow: (self pageDict at: self currentPage) first.
	
	self currentPage == 1 ifTrue: [arrowUp delete].
	
	self updateLayout.