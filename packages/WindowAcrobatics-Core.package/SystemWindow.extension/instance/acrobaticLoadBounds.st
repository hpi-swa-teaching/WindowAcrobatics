*WindowAcrobatics-Core
acrobaticLoadBounds

	acrobaticBounds ifNil: [^ self].
	self bounds: acrobaticBounds