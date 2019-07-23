accessing
trimWorldArea: anArea

	| area |
	area := anArea.
	Preferences fullScreenLeavesDeskMargins
		ifTrue: [area := area insetBy: 22].
	^ area