helper
allSystemWindows

	^ ActiveWorld submorphs select: [ :w | w isSystemWindow ]