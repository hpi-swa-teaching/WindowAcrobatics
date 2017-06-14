as yet unclassified
activateWindowFromEvent: evt thumbnail: thumbnail

	(thumbnail valueOfProperty: #window) beKeyWindow.
	WADashboard hasDashboard: false.
	self delete.