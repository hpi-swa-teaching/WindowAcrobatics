pages
windowFromNextPage: aNumber 

	aNumber > self numberPages ifTrue: [(self pageDict at: aNumber - 1) isEmpty ifTrue: [self pageDict removeKey: aNumber - 1. self deletePageNumberAt:  aNumber - 1]]
									    ifFalse: [| wnd | wnd := (self pageDict at: aNumber) removeFirst. (self pageDict at: aNumber - 1) addLast: wnd. 
										^ self windowFromNextPage: aNumber + 1 ].
									