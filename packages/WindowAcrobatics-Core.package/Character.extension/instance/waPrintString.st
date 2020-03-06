*WindowAcrobatics-Core-printing
waPrintString
	^ String streamContents: [:stream |
		self waPrintOn: stream]