handling
align: aSymbol

	aSymbol = #bottom ifTrue: [
		^ self alignBlock value: (self openWindows) value: #leftCenter value: #verticalHalf.
		].
	
	aSymbol = #full ifTrue: [
		^ self alignBlock value: (self openWindows) value: #leftTop value: #full.
		].
	
	aSymbol = #left ifTrue: [
		^ self alignBlock value: (self openWindows) value: #leftTop value: #horizontalHalf.
		].
	
	aSymbol = #right ifTrue: [
		^ self alignBlock value: (self openWindows) value: #centerTop value: #horizontalHalf.
		].
	
	aSymbol = #top ifTrue: [
		^ self alignBlock value: (self openWindows) value: #leftTop value: #verticalHalf.
		].
