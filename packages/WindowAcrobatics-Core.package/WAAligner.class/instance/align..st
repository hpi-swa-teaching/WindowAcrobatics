handling
align: aSymbol

	| window nextState state |
	window := self findWindowToAlignIfEmpty: [^ self].
	aSymbol = #full ifTrue: [^ window expandBoxHit].
	state := window acrobaticState ifNil: [
		window acrobaticStoreBounds.
		WAAlignment default].
	nextState := state nextStateFor: aSymbol.
	nextState applyToWindow: window for: self.
	window acrobaticState: nextState.
	window beKeyWindow.