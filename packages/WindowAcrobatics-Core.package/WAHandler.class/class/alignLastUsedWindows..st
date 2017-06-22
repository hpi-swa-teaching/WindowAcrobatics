preferences
alignLastUsedWindows: aNumber

	aNumber <= 2 ifTrue: [self numberOfLastWindows: 2. ^ true].
	aNumber <= 4 ifTrue: [self numberOfLastWindows: 4. ^ true].	
	aNumber > 4 ifTrue: [self numberOfLastWindows: 6. ^ true].	