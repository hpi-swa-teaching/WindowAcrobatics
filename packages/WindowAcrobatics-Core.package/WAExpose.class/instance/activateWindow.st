as yet unclassified
activateWindow

	self selectedWindow ifNotNil: [:thumbnail | (thumbnail valueOfProperty: #window) beKeyWindow].
	self delete.