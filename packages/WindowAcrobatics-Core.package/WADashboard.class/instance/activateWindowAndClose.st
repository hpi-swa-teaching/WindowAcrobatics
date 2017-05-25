as yet unclassified
activateWindowAndClose

	self selectedWindow ifNotNil: [:thumbnail | (thumbnail valueOfProperty: #window) activate; comeToFront].
	self delete.