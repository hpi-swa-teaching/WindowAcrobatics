accessing
descriptionToActionBindings
	^ DescriptionToActionBindings ifNil: [DescriptionToActionBindings := Dictionary new 
		add: 'alignLeft'->[[ :windows | windows ifNotEmpty: [ (windows at: 1) position: 0@18; extent: (World extent x / 2) asInteger @(World extent y - 18)]] value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]).]; 
		add: 'alignRight'->[[ :windows | windows ifNotEmpty: [ (windows at: 1) position: (World extent x / 2) asInteger @18; extent: (World extent x/ 2) asInteger @(World extent y - 18)]] value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]).];
		add: 'alignTop'->[[ :windows | windows ifNotEmpty: [ (windows at: 1) position: 0@18; extent: (World extent x)@(World extent y / 2) asInteger ]] value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]).];
		add: 'alignBottom'->[[ :windows | windows ifNotEmpty: [ (windows at: 1)  position: 0@(World extent y / 2) asInteger; extent: (World extent x)@(World extent y / 2) asInteger ]] value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]).];
		add: 'openDashboard'->[WADashboard open.];
		yourself.]