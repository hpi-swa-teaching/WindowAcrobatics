as yet unclassified
handleEvent: aKeyboardEvent

	^ self descriptionToActionBindings at: (self keyToDescriptionBindings at: aKeyboardEvent keyString) ifAbsent: [ [aKeyboardEvent]]