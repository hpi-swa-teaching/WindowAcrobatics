*WindowAcrobatics-Core-constants
waConstantNameFor: aCharacter
	^ self waConstantNames
		detect: [ :each | (self perform: each) = aCharacter ]
		ifNone: [ nil ].