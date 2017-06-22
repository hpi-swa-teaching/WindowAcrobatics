helper
getSystemWindows

	^ ActiveWorld submorphs select: [:w | w isSystemWindow].