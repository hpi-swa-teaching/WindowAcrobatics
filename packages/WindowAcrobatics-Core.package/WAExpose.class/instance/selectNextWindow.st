as yet unclassified
selectNextWindow

	self thumbnailsOnPage ifNotEmpty: [
		self selectWindow: (self thumbnailsOnPage atWrap: (self thumbnailsOnPage indexOf: self selectedWindow) + 1)
	]