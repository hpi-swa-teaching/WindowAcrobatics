handling
handleEvent: aKeyboardEvent

	|alignNotHandled dashboardNotHandled|
	
	alignNotHandled := true.
	dashboardNotHandled := true.
	
	self alignmentActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsAlignment at: aKeyboardEvent keyString ifAbsent: [alignNotHandled := false]) ifAbsent: []) value.
		].
	
	self dashboardActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsDashboard at: aKeyboardEvent keyString ifAbsent: [dashboardNotHandled := false.]) ifAbsent: []) value.
		].
	
	^ (alignNotHandled or: dashboardNotHandled) and: (self alignmentActive and: self dashboardActive)