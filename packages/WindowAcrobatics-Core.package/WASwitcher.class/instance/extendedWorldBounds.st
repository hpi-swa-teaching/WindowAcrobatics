helper
extendedWorldBounds

	^ (1 - self class spaceNumber @ 0 extent: self class numberOfSpaces @ 1)
		scaleBy: ActiveWorld extent