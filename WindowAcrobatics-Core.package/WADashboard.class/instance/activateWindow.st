as yet unclassified
activateWindow

	self selectedWindow ifNotNil: [:thumbnail | (thumbnail valueOfProperty: #window) activate; comeToFront].
	self delete.