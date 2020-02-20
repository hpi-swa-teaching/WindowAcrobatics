private
keyFromString: aString

	| result |
	aString size = 1 ifTrue: [
		^ aString first].
	(Character waConstantNames includes: aString) ifTrue: [
		^ Character in: aString asSymbol].
	result := [Character readCarefullyFrom: aString]
		ifError: [nil].
	result ifNotNil: [^ result].
	^ self error: 'Invalid key specified'