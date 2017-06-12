properties
valueOfProperty: aSymbol ifAbsent: aBlock

	^ self properties at: aSymbol ifAbsent: aBlock