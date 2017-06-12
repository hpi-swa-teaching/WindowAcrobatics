as yet unclassified
defaultKeybindingsAlignment

	| platformName keybindingsDictionary |
	keybindingsDictionary := Dictionary new 
			add: '<Cmd-left>'->'alignLeft'; 
			add: '<Cmd-right>'->'alignRight';
			add: '<Cmd-home>'->'alignTop';
			add: '<Cmd-end>'->'alignBottom';
			add: '<Cmd-l>'->'alignFull';
			yourself.
	platformName := SmalltalkImage current platformName.
	platformName = 'MacOS' 
		ifTrue: [keybindingsDictionary add: '<Cmd-home>'->'alignTop';
			add: '<Cmd-end>'->'alignBottom'] 
		ifFalse: [keybindingsDictionary add: '<Cmd-up>'->'alignTop';
			add: '<Cmd-down>'->'alignBottom'].
	^keybindingsDictionary	