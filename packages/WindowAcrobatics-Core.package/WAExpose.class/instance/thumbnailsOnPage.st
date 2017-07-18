pages
thumbnailsOnPage
	
	^ self submorphs reject: [:each | (Array with: selectionRectangle  with: arrowDown with: arrowUp)  includes: each].