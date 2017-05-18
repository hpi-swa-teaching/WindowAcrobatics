as yet unclassified
keyBindings

	keyBindings ifNil: [ self initializeGlobalKeyBindings ].
	^ keyBindings