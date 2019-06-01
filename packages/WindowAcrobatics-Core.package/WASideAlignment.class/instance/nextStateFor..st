as yet unclassified
nextStateFor: aSymbol

	((self side = #left) and: [aSymbol = #right])
		ifTrue: [^ WAAlignment default].
	((self side = #right) and: [aSymbol = #left])
		ifTrue: [^ WAAlignment default].
	((self side = #top) and: [aSymbol = #bottom])
		ifTrue: [^ WAAlignment default].
	((self side = #bottom) and: [aSymbol = #top])
		ifTrue: [^ WAAlignment default].
	
	((#(left right) includes: self side) and: [#(top bottom) includes: aSymbol])
		ifTrue: [^ WACornerAlignment horizontalPosition: self side verticalPosition: aSymbol].
	((#(top bottom) includes: self side) and: [#(left right) includes: aSymbol])
		ifTrue: [^ WACornerAlignment horizontalPosition: aSymbol verticalPosition: self side].
	
	((self side = #top) and: [aSymbol = #top])
		ifTrue: [^ WAAlignment fullScreen].
	((self side = #bottom) and: [aSymbol = #bottom])
		ifTrue: [^ WAAlignment collapsed].
	
	^ self