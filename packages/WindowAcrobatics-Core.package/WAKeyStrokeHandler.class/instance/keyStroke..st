as yet unclassified
keyStroke: anEvent 

	^ (self keyBindings at: anEvent keyString) value: anEvent value: self.
 	
	"^ (self keyBindings 
		at: evt keyString
		ifAbsent: [[ :event :morph | morph active ifTrue: [ morph handleTextEntered: event ]]])
	value: evt value: self"