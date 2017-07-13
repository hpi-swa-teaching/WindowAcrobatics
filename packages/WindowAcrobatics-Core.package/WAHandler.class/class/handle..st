handling
handle: aKeyboardEvent

	|alignHandled dashboardHandled switchingHandled|
	
	alignHandled := true.
	dashboardHandled := true.
	switchingHandled := true.

	self alignmentActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsAlignment at: aKeyboardEvent keyString ifAbsent: [alignHandled := false]) ifAbsent: []) value.
		].
	
	self dashboardActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsDashboard at: aKeyboardEvent keyString ifAbsent: [dashboardHandled := false.]) ifAbsent: []) value.
		].

	(self switchingActive) ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsSwitching at: aKeyboardEvent keyString ifAbsent: [switchingHandled := false.]) ifAbsent: []) value.
		].
	
	^ (alignHandled and: self alignmentActive) or: (dashboardHandled and: self dashboardActive) or: (switchingHandled and: self switchingActive)