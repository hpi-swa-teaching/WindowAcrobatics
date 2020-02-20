defaults
defaultKeybindingsAlignment
	
	| keyBindings |
	keyBindings := Dictionary new 
			add: Character arrowLeft -> #alignLeft; 
			add: Character arrowRight -> #alignRight;
			add: $- -> #alignFull;
			add: $k -> #alignLastUsedWindows;			
			yourself.
	(Smalltalk platformName = 'Mac OS') 
		ifFalse: [keyBindings 
			add: Character arrowUp -> #alignTop;
			add: Character arrowDown -> #alignBottom] 
		ifTrue: [keyBindings 
			add: Character home -> #alignTop;
			add: Character end -> #alignBottom].
	^ keyBindings