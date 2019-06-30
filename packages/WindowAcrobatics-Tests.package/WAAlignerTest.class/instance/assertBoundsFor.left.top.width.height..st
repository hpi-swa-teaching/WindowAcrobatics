accessing
assertBoundsFor: window left: left top: top width: width height: height

	^ self
		assert: (window left - left) abs < 1 description: 'Window has wrong position (x)';
		assert: (window top - top) abs < 1 description: 'Window has wrong position (y)';
		assert: (window width - width) abs < 1 description: 'Window has wrong width';
		assert: (window height - height) abs < 1 description: 'Window has wrong height'