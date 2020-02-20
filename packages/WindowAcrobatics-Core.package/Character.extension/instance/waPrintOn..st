*WindowAcrobatics-Core-printing
waPrintOn: aStream
	| integerValue |
	self flag: #workaround. "All these methods can go away when Collections-ct.871 has been merged"
	((integerValue := self asInteger) > 32 and: [integerValue ~= 127]) ifTrue:
		[^self printAsLiteralOn: aStream].
	(self class waConstantNameFor: self)
		ifNotNil: [ :name | aStream nextPutAll: self class name; space; nextPutAll: name ]
		ifNil: [ aStream nextPutAll: self class name; nextPutAll: ' value: '; print: integerValue ]