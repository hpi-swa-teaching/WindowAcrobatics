mouse - testing
handlesMouseMove: event

	(self properties includesKey: #handlesMouseMove) ifFalse: [
		^ ((event hand hasSubmorphs not
			and: [event anyButtonPressed])
			and: [event hand mouseFocus notNil])
			and: [event hand mouseFocus eventHandler == self]].
	
	^ (self valueOfProperty: #handlesMouseMove) cull: event