handling
handleEvent: aKeyboardEvent

	(self descriptionToActionBindings at: (self keyToDescriptionBindings at: aKeyboardEvent keyString ifAbsent: [^ false])) value.

	^ true