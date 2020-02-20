handling
handle: aKeyboardEvent

	| alignHandled dashboardHandled switchingHandled |
	aKeyboardEvent isKeystroke ifFalse: [^ false].
	
	alignHandled := true.
	dashboardHandled := true.
	switchingHandled := true.
	
	self class activateAlignment ifTrue: [
		(self descriptionToActionBindings
			at: (self class keyToDescriptionBindingsAlignment
				at: aKeyboardEvent keyCharacter
				ifAbsent: [alignHandled := false])
			ifAbsent: []) value ].
	
	self class activateDashboard ifTrue: [
		(self descriptionToActionBindings
			at: (self class keyToDescriptionBindingsDashboard
				at: aKeyboardEvent keyCharacter
				ifAbsent: [dashboardHandled := false])
			ifAbsent: []) value ].
	
	self class activateSwitching ifTrue: [
		(self descriptionToActionBindings
			at: (self class keyToDescriptionBindingsSwitching
				at: aKeyboardEvent keyCharacter
				ifAbsent: [switchingHandled := false])
			ifAbsent: []) value ].
	
	^ (alignHandled and: self class activateAlignment)
		or: (dashboardHandled and: self class activateDashboard)
		or: (switchingHandled and: self class activateSwitching)