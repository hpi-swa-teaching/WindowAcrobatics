keyboard - shortcuts
handleShortcut: aKeyboardEvent

	| pattern |
	pattern := self shortcutPatternFrom: aKeyboardEvent.  
	
	(self shortcuts at: pattern ifAbsent: []) ifNotNil: [:target |
		target first first
			ifNotNil: [:receiver | receiver perform: target second]
			ifNil: [self shortcuts removeKey: pattern] "kind of garbage collection here"].