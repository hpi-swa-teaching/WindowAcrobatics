properties
setProperty: aSymbol toValue: anObject

	anObject ifNil: [^ self removeProperty: aSymbol].
	self properties at: aSymbol put: anObject.