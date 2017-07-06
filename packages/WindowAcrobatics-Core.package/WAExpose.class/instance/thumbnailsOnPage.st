as yet unclassified
thumbnailsOnPage
	
	^ (self submorphs copyWithout: selectionRectangle) intersection: ((self submorphs copyWithout: arrowDown) intersection: (self submorphs copyWithout: arrowUp)).