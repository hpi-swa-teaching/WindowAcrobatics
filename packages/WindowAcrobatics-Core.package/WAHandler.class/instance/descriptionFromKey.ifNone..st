handling
descriptionFromKey: keyCharacter ifNone: exceptionBlock

	self class activateAlignment ifTrue: [
		self class keyToDescriptionBindingsAlignment
			at: keyCharacter
			ifPresent: [:description | ^ description]].
	self class activateDashboard ifTrue: [
		self class keyToDescriptionBindingsDashboard
			at: keyCharacter
			ifPresent: [:description | ^ description]].
	self class activateSwitching ifTrue: [
		self class keyToDescriptionBindingsSwitching
			at: keyCharacter
			ifPresent: [:description | ^ description]].
	^ exceptionBlock value