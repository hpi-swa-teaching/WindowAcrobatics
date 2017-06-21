as yet unclassified
countDown 
	
	self seconds = 0 ifTrue: [self delete] ifFalse: [self seconds: (self seconds - 1).].
	