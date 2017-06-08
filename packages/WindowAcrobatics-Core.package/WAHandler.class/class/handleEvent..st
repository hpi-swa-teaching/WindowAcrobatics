handling
handleEvent: aKeyboardEvent

	|alignNotHandled dashboardNotHandled|
	
	alignNotHandled := false.
	dashboardNotHandled := false.
	
	self alignmentActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsAlignment at: aKeyboardEvent keyString ifAbsent: []) ifAbsent: [alignNotHandled := true.]) value.
		].
	
	self dashboardActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsDashboard at: aKeyboardEvent keyString ifAbsent: [dashboardNotHandled := true.]) ifAbsent: []) value.
		].
	
	^ (alignNotHandled and: dashboardNotHandled) not