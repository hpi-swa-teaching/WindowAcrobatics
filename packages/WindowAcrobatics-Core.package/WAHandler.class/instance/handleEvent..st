as yet unclassified
handleEvent: aKeyboardEvent

	|alignNotHandled dashboardNotHandled|
	
	alignNotHandled := true.
	dashboardNotHandled := true.
	
	WAHandler alignmentActive ifTrue: [
		(WAHandler descriptionToActionBindings at: (WAHandler keyToDescriptionBindingsAlignment at: aKeyboardEvent keyString ifAbsent: [alignNotHandled := false]) ifAbsent: []) value.
		].
	
	WAHandler dashboardActive ifTrue: [
		(WAHandler descriptionToActionBindings at: (WAHandler keyToDescriptionBindingsDashboard at: aKeyboardEvent keyString ifAbsent: [dashboardNotHandled := false.]) ifAbsent: []) value.
		].
	
	^ (alignNotHandled or: dashboardNotHandled) and: (WAHandler alignmentActive and: WAHandler dashboardActive)