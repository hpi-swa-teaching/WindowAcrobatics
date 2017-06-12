keyboard - shortcuts
on: keyPattern send: aSelector to: aReceiver
	"Add a keyboard shortcut that is handled inside this event handler. The case (lower/upper) of the character does not matter. Example:
	self eventHandler on: #ctrl -> $c send: #copy to: self.
	self eventHandler on: #(ctrl shift) -> Character arrowUp send: #pageUp to: self.
	self eventHandler on: Character enter send: #save to: self.
	
	Modifiers: #cmd, #ctrl, #shift"

	| normalizedPattern |
	normalizedPattern := keyPattern isVariableBinding "= association"
		ifTrue: [keyPattern key isSymbol
			ifTrue: [{keyPattern key} -> keyPattern value asLowercase]
			ifFalse: [keyPattern key sorted -> keyPattern value asLowercase]]
		ifFalse: [#() -> keyPattern asLowercase "character given only"].

	self shortcuts at: normalizedPattern put: {WeakArray with: aReceiver. aSelector}