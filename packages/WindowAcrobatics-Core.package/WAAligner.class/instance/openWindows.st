accessing
openWindows

	WAHandler switchingActive ifTrue: [^ self getWindowsInCurrentSpace ] ifFalse: [^  ActiveWorld submorphs select: [:m | m isSystemWindow]].