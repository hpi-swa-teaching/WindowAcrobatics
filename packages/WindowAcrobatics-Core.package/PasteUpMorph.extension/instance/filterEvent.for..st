*WindowAcrobatics-Core-Events
filterEvent: aKeyboardEvent for: anObject
	"Provide keyboard shortcuts."

	"Delegate keyboard shortcuts to my docking bars."
	self submorphsDo: [:ea | ea isDockingBar ifTrue: [
		ea filterEvent: aKeyboardEvent for: anObject. "No support for converting events here!"
		aKeyboardEvent wasIgnored ifTrue: [^ aKeyboardEvent "early out"]]].
	
	aKeyboardEvent isKeystroke
		ifFalse: [^ aKeyboardEvent].
 
	(aKeyboardEvent commandKeyPressed or: [aKeyboardEvent controlKeyPressed]) ifTrue: [
		(WAHandler handleEvent: aKeyboardEvent) ifTrue: [^ aKeyboardEvent ignore "hit!"].
		].

	aKeyboardEvent commandKeyPressed ifTrue: [
		aKeyboardEvent keyCharacter caseOf: {
			[$R] -> [Utilities browseRecentSubmissions. Transcript show: 'Hello'].
			[$L] -> [self findAFileList: aKeyboardEvent].
			[$O] -> [self findAMonticelloBrowser].
			[$P] -> [self findAPreferencesPanel: aKeyboardEvent].
			"[$Z] -> [ChangeList browseRecentLog]."
			[$]] -> [Smalltalk snapshot: true andQuit: false].
			[$+] -> [Preferences increaseFontSize].
			[$-] -> [Preferences decreaseFontSize].
			[$=] -> [Preferences restoreDefaultFonts].
		} otherwise: [^ aKeyboardEvent "no hit"].
		
		^ aKeyboardEvent ignore "hit!"].
 
	^ aKeyboardEvent "no hit"