as yet unclassified
selectNextWindow
	
	self thumbnails ifNotEmpty: [
		self selectWindow: (self thumbnails atWrap: (self thumbnails indexOf: self selectedWindow) + 1).
		]