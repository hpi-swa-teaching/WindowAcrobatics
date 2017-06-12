as yet unclassified
canHandleShortcut: aKeyboardEvent

	^ self shortcuts notEmpty and: [
		self shortcuts includesKey: (self shortcutPatternFrom: aKeyboardEvent)]