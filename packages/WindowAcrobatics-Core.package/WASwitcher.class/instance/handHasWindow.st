helper
handHasWindow

	^ (ActiveHand submorphs select: [ :w | w isSystemWindow ]) notEmpty
	