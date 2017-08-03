windows-handling
selectWindow: thumbnail

	thumbnail ifNotNil: [
		self selectionRectangle bounds: (thumbnail bounds outsetBy: self selectionRectancleOutset) ].
	self selectionRectangle setProperty: #target toValue: thumbnail. 