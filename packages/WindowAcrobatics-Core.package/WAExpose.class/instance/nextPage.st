as yet unclassified
nextPage
	
	self thumbnailsOnPage do: [:thmb|thmb delete].
	
	self currentPage: self currentPage + 1. 
	
	(self pageDict at: self currentPage) do: [:thmb | self addMorphBack: thmb].
	
	self selectWindow: (self pageDict at: currentPage) first.
	
	self initializeUpButton.
	
	Transcript show: (self currentPage == self numberPages).
	self currentPage == self numberPages ifTrue: [arrowDown delete].
	arrowDown delete.
	self updateLayout.
