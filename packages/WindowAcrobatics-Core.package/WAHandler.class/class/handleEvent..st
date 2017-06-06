handling
handleEvent: aKeyboardEvent
	
	Transcript show: aKeyboardEvent.
	(self descriptionToActionBindings at: (self keyToDescriptionBindings at: aKeyboardEvent keyString ifAbsent: [^ false])) value.
	^ true