handling
handle: aKeyboardEvent

	| alignHandled dashboardHandled switchingHandled |
	
	alignHandled := true.
	dashboardHandled := true.
	switchingHandled := true.

	self class alignmentActive ifTrue: [
		(self descriptionToActionBindings at: (self class keyToDescriptionBindingsAlignment at: aKeyboardEvent keyString ifAbsent: [alignHandled := false]) ifAbsent: []) value ].
	
	self class dashboardActive ifTrue: [
		(self descriptionToActionBindings at: (self class keyToDescriptionBindingsDashboard at: aKeyboardEvent keyString ifAbsent: [dashboardHandled := false.]) ifAbsent: []) value ].

	self class switchingActive ifTrue: [
		(self descriptionToActionBindings at: (self class keyToDescriptionBindingsSwitching at: aKeyboardEvent keyString ifAbsent: [switchingHandled := false.]) ifAbsent: []) value ].
	
	^ (alignHandled and: self class alignmentActive) or: (dashboardHandled and: self class dashboardActive) or: (switchingHandled and: self class switchingActive)