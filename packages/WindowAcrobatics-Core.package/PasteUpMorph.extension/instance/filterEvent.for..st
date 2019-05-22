*WindowAcrobatics-Core-Events-override
filterEvent: mouseOrKeyboardEvent for: anObject

	"1) Mouse shortcuts"
	mouseOrKeyboardEvent isMouse ifTrue: [
	
		"Only accept mouse down, no up."
		mouseOrKeyboardEvent isMouseDown
			ifFalse: [^ mouseOrKeyboardEvent].
	
		mouseOrKeyboardEvent blueButtonPressed
			ifTrue: [	self tryInvokeHalo: mouseOrKeyboardEvent]
			ifFalse: [mouseOrKeyboardEvent controlKeyPressed
				ifTrue: [self tryInvokeMetaMenu: mouseOrKeyboardEvent]].

		^ mouseOrKeyboardEvent].

	"2) Keyboard shortcuts"
	mouseOrKeyboardEvent commandKeyPressed ifTrue: [
		(WAHandler new handle: mouseOrKeyboardEvent)
			ifTrue: [^ mouseOrKeyboardEvent ignore "hit!"]].
	
	mouseOrKeyboardEvent isKeyboard ifTrue: [

		"Delegate keyboard shortcuts to my docking bars."
		self submorphsDo: [:ea | ea isDockingBar ifTrue: [
			ea filterEvent: mouseOrKeyboardEvent for: anObject. "No support for converting events here!"
			mouseOrKeyboardEvent wasIgnored ifTrue: [^ mouseOrKeyboardEvent "early out"]]].
	
		"Only accept key strokes as shortcuts, no down/up."
		mouseOrKeyboardEvent isKeystroke
			ifFalse: [^ mouseOrKeyboardEvent].

		self tryInvokeKeyboardShortcut: mouseOrKeyboardEvent.
	
		^ mouseOrKeyboardEvent].
	
	"Should not be necessary if this filter is correctly configured."
	^ mouseOrKeyboardEvent
