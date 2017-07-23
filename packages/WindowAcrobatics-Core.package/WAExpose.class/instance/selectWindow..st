windows-handling
selectWindow: thumbnail

	thumbnail ifNotNil: [
		selectionRectangle bounds: (thumbnail bounds outsetBy: (6@43 corner: 6@6))].
	selectionRectangle setProperty: #target toValue: thumbnail. 