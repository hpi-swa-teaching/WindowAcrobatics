assertions
assert: actual near: expected description: aString
	
	self assert: (expected - actual) asPoint r < self threshold description: aString