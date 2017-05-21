*WindowAcrobatics-Events
filterEvent: aKeyboardEvent for: anObject
	"Provide keyboard shortcuts."

	"Delegate keyboard shortcuts to my docking bars."
	self submorphsDo: [:ea | ea isDockingBar ifTrue: [
		ea filterEvent: aKeyboardEvent for: anObject. "No support for converting events here!"
		aKeyboardEvent wasIgnored ifTrue: [^ aKeyboardEvent "early out"]]].
	
	aKeyboardEvent isKeystroke
		ifFalse: [^ aKeyboardEvent].

	aKeyboardEvent commandKeyPressed ifTrue: [
		aKeyboardEvent keyCharacter caseOf: {
			[$R] -> [Utilities browseRecentSubmissions. Transcript show: 'Hello'].
			[$L] -> [self findAFileList: aKeyboardEvent].
			[$O] -> [self findAMonticelloBrowser].
			[$P] -> [self findAPreferencesPanel: aKeyboardEvent].
			"[$Z] -> [ChangeList browseRecentLog]."
			[$]] -> [Smalltalk snapshot: true andQuit: false].
			[$+] -> [Preferences increaseFontSize].
			[$J] -> [ WADashboard new openInWorld].
			[$-] -> [Preferences decreaseFontSize].
			[$=] -> [Preferences restoreDefaultFonts].
			[$w] -> [ WADashboard new openInWorld].
			[$q] -> [RectangleMorph new openInWorld].
			[$l] ->[ ((ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]) at: 1) position: (World extent x / 2)@18; extent: (World extent x/ 2)@(World extent y - 18)].
			[$k] -> [ ((ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]) at: 1) position: 0@(World extent y / 2); extent: (World extent x)@(World extent y / 2)].	
			[$j] -> [ ((ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]) at: 1) position: 0@18; extent: (World extent x / 2)@(World extent y - 18)	].	
			[$i] -> [ ((ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]) at: 1) position: 0@18; extent: (World extent x)@(World extent y / 2)	].	
		} otherwise: [^ aKeyboardEvent "no hit"].
		
		^ aKeyboardEvent ignore "hit!"].

	^ aKeyboardEvent "no hit"