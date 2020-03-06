handling
handle: aKeyboardEvent

	| action description |
	(aKeyboardEvent isKeystroke and: [aKeyboardEvent commandKeyPressed])
		ifFalse: [^ false].
	
	description := self descriptionFromKey: aKeyboardEvent keyCharacter ifNone: [^ false].
	action := self actionFromDescription: description.
	action value.
	^ true