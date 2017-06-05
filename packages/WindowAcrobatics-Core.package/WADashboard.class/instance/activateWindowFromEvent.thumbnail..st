as yet unclassified
activateWindowFromEvent: evt thumbnail: thumbnail

	(thumbnail valueOfProperty: #window) activate; comeToFront.
	WADashboard hasDashboard: false.
	self delete.