as yet unclassified
getCurrentWindowType

	(self getSystemWindows) ifEmpty: [ ^ false.].
^ ((self getSystemWindows  select: [ :w | w isLookingFocused]) at: 1) label.

