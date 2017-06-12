as yet unclassified
shortcutPatternFrom: aKeyboardEvent

	| map pattern |
	self shortcuts ifEmpty: [^ nil].
	
	map := {
		aKeyboardEvent commandKeyPressed -> #cmd.
		aKeyboardEvent controlKeyPressed -> #ctrl.
		aKeyboardEvent shiftPressed -> #shift.
	}.
	pattern := OrderedCollection new.
	
	map do: [:assoc | assoc key ifTrue: [pattern add: assoc value]].
	
	pattern := pattern sorted asArray -> aKeyboardEvent keyCharacter asLowercase.

	^ pattern