initializing
defaultKeybindingsAlignment
	
	| keyBindings |

	keyBindings := Dictionary new 
			add: '<Cmd-left>'->'alignLeft'; 
			add: '<Cmd-right>'->'alignRight';
			add: '<Cmd-l>'->'alignFull';
			add: '<Cmd-k>'->'alignLastUsedWindows';			
			yourself.
		
	(Smalltalk platformName = 'Mac OS') ifFalse: [keyBindings add: '<Cmd-up>'->'alignTop';
			add: '<Cmd-down>'->'alignBottom'] ifTrue: [keyBindings add: '<Cmd-home>'->'alignTop';
			add: '<Cmd-end>'->'alignBottom'].
		
	^keyBindings