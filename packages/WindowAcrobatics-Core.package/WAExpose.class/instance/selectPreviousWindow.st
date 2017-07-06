as yet unclassified
selectPreviousWindow

	self selectWindow: (self thumbnailsOnPage atWrap: (self thumbnailsOnPage indexOf: self selectedWindow) - 1).