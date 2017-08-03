windows-handling
selectWindow: thumbnail

	thumbnail ifNotNil: [
		selectionRectangle bounds: (thumbnail bounds outsetBy: self selectionRectancleOutset) ].
	selectionRectangle setProperty: #target toValue: thumbnail. 