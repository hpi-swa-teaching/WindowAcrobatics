handling
findWindowToAlignIfEmpty: aBlock

	^ (WAHandler alignFocusedWindow
		ifFalse: [self windowsInCurrentSpace]
		ifTrue: [SystemWindow windowsIn: ActiveWorld satisfying: #isLookingFocused])
			ifEmpty: aBlock 
			ifNotEmpty: [:windows | windows first]