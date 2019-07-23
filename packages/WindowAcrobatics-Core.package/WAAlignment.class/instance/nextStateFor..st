transitions
nextStateFor: aSymbol

	self state = #maximized ifTrue: [^ self class default].
	^ WASideAlignment side: aSymbol