preferences
keyToDescriptionBindingsDashboard
	
	KeyToDescriptionBindingsDashboard ifNil: [KeyToDescriptionBindingsDashboard := WAHandler instance defaultKeybindingsDashboard].
	
	^ KeyToDescriptionBindingsDashboard