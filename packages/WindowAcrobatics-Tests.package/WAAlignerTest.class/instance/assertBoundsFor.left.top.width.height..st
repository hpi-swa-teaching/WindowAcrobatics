assertions
assertBoundsFor: window left: left top: top width: width height: height

	^ self
		assert: window left near: left description: 'Window has wrong position (x)';
		assert: window top near: top description: 'Window has wrong position (y)';
		assert: window width near: width description: 'Window has wrong width';
		assert: window height near: height description: 'Window has wrong height'