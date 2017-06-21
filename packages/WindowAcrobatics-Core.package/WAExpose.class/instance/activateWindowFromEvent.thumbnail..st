as yet unclassified
activateWindowFromEvent: evt thumbnail: thumbnail

	(thumbnail valueOfProperty: #window) beKeyWindow.
	self delete.