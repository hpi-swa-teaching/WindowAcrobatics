preferences
keyToDescriptionBindingsDashboard
	
	KeyToDescriptionBindingsDashboard ifNil: [KeyToDescriptionBindingsDashboard := self instance defaultKeybindingsDashboard].
	
	^ KeyToDescriptionBindingsDashboard