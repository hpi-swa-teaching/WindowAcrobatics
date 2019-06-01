handling
align: aSymbol

	| window nextState state |
	window := self findWindowToAlignIfEmpty: [^ self].
	aSymbol = #full ifTrue: [^ window expandBoxHit].
	state := self windowStateFor: window ifAbsent: [WAAlignment default].
	nextState := state nextStateFor: aSymbol.
	nextState applyToWindow: window for: self.
	self windowStateFor: window put: nextState.
	window beKeyWindow.